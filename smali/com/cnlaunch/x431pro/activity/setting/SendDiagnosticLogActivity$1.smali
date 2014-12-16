.class Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$1;
.super Ljava/lang/Object;
.source "SendDiagnosticLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->onSuccess(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->finish()V

    .line 176
    return-void
.end method
