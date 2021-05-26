; ModuleID = 'result.bc'
source_filename = "test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

; Function Attrs: nofree norecurse nosync nounwind readnone
define dso_local i32 @foo(i32 %a) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind readnone
define dso_local i32 @bar(i32 %a) local_unnamed_addr #0 {
entry:
  ret i32 %a
}

; Function Attrs: nofree norecurse nosync nounwind readnone
define dso_local i32 @baz(i32 %a) local_unnamed_addr #0 {
entry:
  %add = add i32 %a, 100
  %0 = add i32 %a, 999
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 %add)
  %1 = add i32 %smax, -99
  %2 = sub i32 %1, %a
  ret i32 %2
}

; Function Attrs: nofree nosync nounwind readnone
define dso_local i32 @direct_version(i32 %a) local_unnamed_addr #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %b.011 = phi i32 [ %a, %entry ], [ %1, %for.body ]
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %add.i = add i32 %b.011, 100
  %0 = add i32 %b.011, 999
  %smax.i = tail call i32 @llvm.smax.i32(i32 %0, i32 %add.i) #5
  %1 = add i32 %smax.i, -99
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !6

for.end:                                          ; preds = %for.body
  ret i32 %1
}

; Function Attrs: nounwind
define dso_local i32 @indirect_version(i32 (i32)* nocapture %fn, i32 (i32)* nocapture %fn2, i32 (i32)* nocapture %fn3, i32 %start_num) local_unnamed_addr #2 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %b.011 = phi i32 [ %start_num, %entry ], [ %add3, %for.body ]
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call = tail call i32 %fn(i32 %b.011) #5
  %call1 = tail call i32 %fn2(i32 %b.011) #5
  %add = add nsw i32 %call1, %call
  %call2 = tail call i32 %fn3(i32 %b.011) #5
  %add3 = add nsw i32 %add, %call2
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !8

for.end:                                          ; preds = %for.body
  ret i32 %add3
}

; Function Attrs: nofree nosync nounwind readonly
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %argc, 2
  br i1 %cmp, label %land.lhs.true, label %for.body.i10.preheader

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i32 1
  %0 = load i8*, i8** %arrayidx, align 4, !tbaa !9
  %1 = load i8, i8* %0, align 1, !tbaa !13
  %cmp2 = icmp eq i8 %1, 100
  br i1 %cmp2, label %return, label %for.body.i10.preheader

for.body.i10.preheader:                           ; preds = %land.lhs.true, %entry
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10, %for.body.i10.preheader
  %b.011.i6 = phi i32 [ %3, %for.body.i10 ], [ %argc, %for.body.i10.preheader ]
  %i.010.i7 = phi i32 [ %inc.i8, %for.body.i10 ], [ 0, %for.body.i10.preheader ]
  %add.i11 = add i32 %b.011.i6, 100
  %2 = add i32 %b.011.i6, 999
  %smax.i = tail call i32 @llvm.smax.i32(i32 %2, i32 %add.i11) #5
  %3 = add i32 %smax.i, -99
  %inc.i8 = add nuw nsw i32 %i.010.i7, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, 100
  br i1 %exitcond.not.i9, label %return, label %for.body.i10, !llvm.loop !8

return:                                           ; preds = %for.body.i10, %land.lhs.true
  %retval.0 = phi i32 [ 90005, %land.lhs.true ], [ %3, %for.body.i10 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind readnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #1 = { nofree nosync nounwind readnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #2 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #3 = { nofree nosync nounwind readonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+m,+relax,-save-restore" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 1, !"SmallDataLimit", i32 8}
!3 = !{i32 1, !"ThinLTO", i32 0}
!4 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!5 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}

^0 = module: (path: "result.bc", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "direct_version", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, funcFlags: (readNone: 1, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0)))) ; guid = 5605640743600143956
^2 = gv: (name: "llvm.smax.i32") ; guid = 6002034434922093760
^3 = gv: (name: "foo", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 1, readOnly: 0, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0)))) ; guid = 6699318081062747564
^4 = gv: (name: "baz", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, funcFlags: (readNone: 1, readOnly: 0, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0)))) ; guid = 7546896869197086323
^5 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 19, funcFlags: (readNone: 0, readOnly: 1, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0)))) ; guid = 15822663052811949562
^6 = gv: (name: "indirect_version", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 16075531524226846982
^7 = gv: (name: "bar", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 1, readOnly: 0, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0)))) ; guid = 16434608426314478903
^8 = flags: 8
^9 = blockcount: 14
