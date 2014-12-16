.class Lcom/cnlaunch/golo3/message/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/golo3/message/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/golo3/message/BaseActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/golo3/message/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/golo3/message/BaseActivity$1;->this$0:Lcom/cnlaunch/golo3/message/BaseActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    int-to-long v0, v2

    .line 82
    .local v0, id:J
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->leftNav:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/cnlaunch/golo3/message/BaseActivity$1;->this$0:Lcom/cnlaunch/golo3/message/BaseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/golo3/message/BaseActivity;->leftNavClick()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget v2, Lcom/cnlaunch/golo3/message/R$id;->rightNav:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/cnlaunch/golo3/message/BaseActivity$1;->this$0:Lcom/cnlaunch/golo3/message/BaseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/golo3/message/BaseActivity;->rightNavClick()V

    goto :goto_0
.end method
