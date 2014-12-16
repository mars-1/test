.class Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness$1;
.super Ljava/lang/Thread;
.source "DiagnoseLogicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealAlertDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness$1;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    .line 248
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 251
    :try_start_0
    sget v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->PROGRESS_DIALOG_DELAY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness$1;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    #getter for: Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->mDiagnoseBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->access$0(Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v1

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    .line 256
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
