.class Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness$1;
.super Landroid/os/Handler;
.source "DiagnoseBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness$1;->this$0:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 297
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 301
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->access$0()Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseLogicBusiness;->dealUIData(Ljava/lang/String;)V

    .line 302
    return-void
.end method
