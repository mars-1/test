.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity$RegisterTextWatcher;
.super Ljava/lang/Object;
.source "RegistActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/login/RegistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegisterTextWatcher"
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$RegisterTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$RegisterTextWatcher;->id:I

    .line 235
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 240
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$RegisterTextWatcher;->id:I

    .line 243
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 248
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 252
    return-void
.end method
