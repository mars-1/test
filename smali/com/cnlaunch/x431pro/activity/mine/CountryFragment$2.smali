.class Lcom/cnlaunch/x431pro/activity/mine/CountryFragment$2;
.super Ljava/lang/Object;
.source "CountryFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 264
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 268
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->filterData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;Ljava/lang/String;)V

    .line 273
    return-void
.end method
