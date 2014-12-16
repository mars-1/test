.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZipThread"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private softPackageID:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fileName"
    .parameter "filePath"
    .parameter "softPackageID"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->fileName:Ljava/lang/String;

    .line 805
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    .line 806
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->softPackageID:Ljava/lang/String;

    .line 807
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 811
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 916
    :goto_0
    return-void

    .line 811
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 812
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->fileName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 814
    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 815
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 816
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$4(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 817
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 818
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 819
    .local v4, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 820
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->installAPKSilently(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 821
    .local v6, result:I
    const/4 v10, -0x2

    if-ne v10, v6, :cond_2

    .line 822
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->softPackageID:Ljava/lang/String;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getPackageNameByID(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$6(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, packageName:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 824
    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->uninstallAPKSilently(Ljava/lang/String;)I

    move-result v6

    .line 825
    if-nez v6, :cond_2

    .line 826
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->installAPKSilently(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 830
    .end local v5           #packageName:Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_6

    .line 831
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 832
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadOK()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 865
    .end local v4           #msg:Landroid/os/Message;
    .end local v6           #result:I
    :cond_3
    :goto_1
    const/4 v10, 0x2

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 866
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$12(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 867
    .local v9, zipPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;

    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-direct {v12, v13, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V

    invoke-static {v10, v9, v11, v12}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->unZipEx(Ljava/lang/String;Ljava/lang/String;ZLcom/cnlaunch/x431pro/utils/file/UnZipListener;)Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, message:Ljava/lang/String;
    const-string/jumbo v10, "success"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 869
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 870
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 871
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadOK()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 879
    .end local v3           #message:Ljava/lang/String;
    .end local v9           #zipPath:Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v10, 0x3

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 880
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$12(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 881
    .restart local v9       #zipPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;

    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-direct {v12, v13, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V

    invoke-static {v10, v9, v11, v12}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->unZipEx(Ljava/lang/String;Ljava/lang/String;ZLcom/cnlaunch/x431pro/utils/file/UnZipListener;)Ljava/lang/String;

    move-result-object v3

    .line 883
    .restart local v3       #message:Ljava/lang/String;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$1(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "message: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 885
    const-string/jumbo v10, "success"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 886
    new-instance v10, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;
    invoke-static {v11}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$12(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->update(Ljava/lang/String;)V

    .line 888
    new-instance v2, Lcom/ifoer/expedition/ndk/MakeLicense;

    invoke-direct {v2}, Lcom/ifoer/expedition/ndk/MakeLicense;-><init>()V

    .line 889
    .local v2, makeLicense:Lcom/ifoer/expedition/ndk/MakeLicense;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$13(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/utils/PathUtils;

    move-result-object v10

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->softPackageID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;
    invoke-static {v13}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$12(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLicensePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 890
    .local v8, versionsPaths:Ljava/lang/String;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v10, v8}, Lcom/ifoer/expedition/ndk/MakeLicense;->autoMakeLicense(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 891
    .local v7, succeedMakeLicense:Z
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$1(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "succeedMakeLicense: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$1(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "filePath: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " versionsPaths: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    if-eqz v7, :cond_b

    .line 894
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 895
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 897
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$14(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v10

    const-string/jumbo v11, "need_refresh"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 898
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadOK()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 909
    .end local v2           #makeLicense:Lcom/ifoer/expedition/ndk/MakeLicense;
    .end local v3           #message:Ljava/lang/String;
    .end local v7           #succeedMakeLicense:Z
    .end local v8           #versionsPaths:Ljava/lang/String;
    .end local v9           #zipPath:Ljava/lang/String;
    :cond_5
    :goto_3
    const/16 v10, 0x64

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 910
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 911
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 834
    .restart local v6       #result:I
    :cond_6
    const/4 v10, -0x2

    if-ne v10, v6, :cond_7

    .line 835
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 836
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 837
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 838
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 839
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 840
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 841
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    const/4 v11, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z
    invoke-static {v10, v11}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$9(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Z)V

    .line 842
    :goto_4
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$10(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 844
    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 845
    :catch_0
    move-exception v1

    .line 846
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 851
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_7
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 852
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_1

    .line 856
    .end local v4           #msg:Landroid/os/Message;
    .end local v6           #result:I
    :cond_8
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    const/4 v11, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z
    invoke-static {v10, v11}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$11(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Z)V

    .line 857
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadOK()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$7(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_1

    .line 861
    :cond_9
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_1

    .line 874
    .restart local v3       #message:Ljava/lang/String;
    .restart local v9       #zipPath:Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_2

    .line 900
    .restart local v2       #makeLicense:Lcom/ifoer/expedition/ndk/MakeLicense;
    .restart local v7       #succeedMakeLicense:Z
    .restart local v8       #versionsPaths:Ljava/lang/String;
    :cond_b
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 901
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_3

    .line 906
    .end local v2           #makeLicense:Lcom/ifoer/expedition/ndk/MakeLicense;
    .end local v7           #succeedMakeLicense:Z
    .end local v8           #versionsPaths:Ljava/lang/String;
    :cond_c
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_3
.end method
