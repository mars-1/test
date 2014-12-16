.class public Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxPreference.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;

.field private mLayoutResId:I

.field private mSendAccessibilityEventViewClickedType:Z

.field private mShouldDisableView:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrset"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const v0, 0x7f030163

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mLayoutResId:I

    .line 28
    const v0, 0x7f030164

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mWidgetLayoutResId:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mShouldDisableView:Z

    .line 42
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mContext:Landroid/content/Context;

    .line 46
    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 45
    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 186
    check-cast v1, Landroid/view/ViewGroup;

    .line 187
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 191
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 188
    .restart local v0       #i:I
    .restart local v1       #vg:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const v11, 0x7f0d03f2

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 88
    invoke-virtual {p1, v10}, Landroid/view/View;->setClickable(Z)V

    .line 90
    const v8, 0x7f0d006e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 91
    .local v6, textView:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #textView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 96
    .restart local v6       #textView:Landroid/widget/TextView;
    if-eqz v6, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 98
    .local v3, summary:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 99
    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v3           #summary:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mShouldDisableView:Z

    if-eqz v8, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->isEnabled()Z

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 115
    :cond_3
    const v8, 0x7f0d03f4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, checkboxView:Landroid/view/View;
    if-eqz v0, :cond_4

    instance-of v8, v0, Landroid/widget/Checkable;

    if-eqz v8, :cond_4

    move-object v8, v0

    .line 117
    check-cast v8, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v5, v0

    .line 118
    check-cast v5, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    .line 120
    .local v5, switchButton:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;
    new-instance v8, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference$1;

    invoke-direct {v8, p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference$1;-><init>(Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;)V

    invoke-virtual {v5, v8}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    if-eqz v8, :cond_4

    .line 138
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 140
    iput-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 142
    const/4 v1, 0x1

    .line 144
    .local v1, eventType:I
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v8

    .line 143
    invoke-virtual {v0, v8}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 149
    .end local v1           #eventType:I
    .end local v5           #switchButton:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;
    :cond_4
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 150
    .local v4, summaryView:Landroid/widget/TextView;
    if-eqz v4, :cond_8

    .line 151
    const/4 v7, 0x1

    .line 152
    .local v7, useDefaultSummary:Z
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v8, :cond_a

    .line 153
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v7, 0x0

    .line 160
    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 162
    .restart local v3       #summary:Ljava/lang/CharSequence;
    if-eqz v3, :cond_6

    .line 163
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v7, 0x0

    .line 168
    .end local v3           #summary:Ljava/lang/CharSequence;
    :cond_6
    const/16 v2, 0x8

    .line 169
    .local v2, newVisibility:I
    if-nez v7, :cond_7

    .line 171
    const/4 v2, 0x0

    .line 173
    :cond_7
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v2, v8, :cond_8

    .line 174
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    .end local v2           #newVisibility:I
    .end local v7           #useDefaultSummary:Z
    :cond_8
    return-void

    .line 105
    .end local v0           #checkboxView:Landroid/view/View;
    .end local v4           #summaryView:Landroid/widget/TextView;
    .restart local v3       #summary:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 106
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 155
    .end local v3           #summary:Ljava/lang/CharSequence;
    .restart local v0       #checkboxView:Landroid/view/View;
    .restart local v4       #summaryView:Landroid/widget/TextView;
    .restart local v7       #useDefaultSummary:Z
    :cond_a
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v8, :cond_5

    .line 156
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 72
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v1, Landroid/view/LayoutInflater;

    .line 75
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, layout:Landroid/view/View;
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_0

    .line 79
    const v3, 0x7f0d03f3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 78
    check-cast v2, Landroid/view/ViewGroup;

    .line 80
    .local v2, widgetFrame:Landroid/view/ViewGroup;
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/CheckBoxPreference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    .end local v2           #widgetFrame:Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method
