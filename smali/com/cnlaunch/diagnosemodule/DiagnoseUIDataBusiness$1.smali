.class Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$1;
.super Ljava/lang/Object;
.source "DiagnoseUIDataBusiness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->jsonUIShowDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

.field private final synthetic val$ui_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$1;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$1;->val$ui_type:Ljava/lang/String;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$1;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness$1;->val$ui_type:Ljava/lang/String;

    const-string/jumbo v2, "00"

    #calls: Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->access$1(Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method
