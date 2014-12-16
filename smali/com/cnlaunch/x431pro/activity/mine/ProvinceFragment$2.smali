.class Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment$2;
.super Ljava/lang/Object;
.source "ProvinceFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 235
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 240
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->filterData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/ProvinceFragment;Ljava/lang/String;)V

    .line 245
    return-void
.end method
