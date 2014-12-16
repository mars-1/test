.class Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$2;
.super Ljava/lang/Object;
.source "DiagnoseAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->create(Z)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

.field private final synthetic val$dialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$2;->this$1:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$2;->val$dialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$2;->this$1:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;

    #getter for: Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->access$1(Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$2;->val$dialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 232
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$2;->val$dialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->dismiss()V

    .line 233
    return-void
.end method
