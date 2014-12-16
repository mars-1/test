.class public interface abstract Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
.super Ljava/lang/Object;
.source "IFragmentCallback.java"


# virtual methods
.method public abstract SendFeedbackMaskMessage(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract SendFeedbackPageStreamMessage(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V
.end method

.method public abstract connectDrive(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract exitDiagnoseRunning(I)V
.end method

.method public abstract getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;
.end method

.method public abstract getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
.end method

.method public abstract launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract launchRemoteDiag(I)V
.end method

.method public abstract printData(Ljava/lang/String;)I
.end method

.method public abstract removeCallbackListener()V
.end method

.method public abstract sendCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setAutoConnBluetooth()V
.end method

.method public abstract setDatastreamRecordFlag(ZI)V
.end method

.method public abstract setDiagnoseRunningInfo(Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;)V
.end method

.method public abstract setMainTitle(Ljava/lang/String;)V
.end method

.method public abstract setOnAcitivityCallback(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;)V
.end method

.method public abstract setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V
.end method

.method public abstract showRemoteDialog(I)V
.end method

.method public abstract upLoadSaveReport()V
.end method
