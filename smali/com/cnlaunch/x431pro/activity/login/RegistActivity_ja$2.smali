.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$2;
.super Ljava/lang/Object;
.source "RegistActivity_ja.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 269
    const v0, 0x7f0c02dc

    if-ne p2, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    const/4 v1, 0x0

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->sex:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$4(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;I)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->sex:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$4(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;I)V

    goto :goto_0
.end method
