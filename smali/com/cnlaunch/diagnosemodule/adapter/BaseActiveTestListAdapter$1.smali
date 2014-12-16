.class Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;
.super Ljava/lang/Object;
.source "BaseActiveTestListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;->this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;->this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->mDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;->this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->mDialog:Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;->this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;

    iget-object v1, v0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->mDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;->this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;->this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->mDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;->this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->mDialog:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;->this$0:Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;

    iget-object v0, v0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->mDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 62
    return-void
.end method
