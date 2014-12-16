.class Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$1;
.super Ljava/lang/Object;
.source "CountrySelectActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;)Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;)Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->getPositionForSection(I)I

    move-result v0

    .line 239
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->lv_area:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;->access$1(Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 243
    .end local v0           #position:I
    :cond_0
    return-void
.end method
