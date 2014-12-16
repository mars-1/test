.class Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference$1;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference$1;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference$1;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->access$0(Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;Z)V

    .line 126
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference$1;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->access$1(Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference$1;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;

    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
