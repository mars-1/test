.class public Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;
.super Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
.source "SetMaxMinValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$MyInputFilter;
    }
.end annotation


# instance fields
.field private bCanDismiss:Z

.field private bValidMax:Z

.field private bValidMin:Z

.field private btnSure:Landroid/widget/Button;

.field private editMax:Landroid/widget/EditText;

.field private editMin:Landroid/widget/EditText;

.field private mContentView:Landroid/view/View;

.field private mMyFilter:[Landroid/text/InputFilter;

.field private maxValue:D

.field private mcontext:Landroid/content/Context;

.field private mfromFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

.field private minValue:D

.field private strReg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mContentView:Landroid/view/View;

    .line 23
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMax:Z

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMin:Z

    .line 24
    iput-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mfromFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

    .line 32
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bCanDismiss:Z

    .line 35
    const-string/jumbo v0, "^([1-9]\\d{0,5}|(-|-[1-9]\\d{0,2})|-?0)(\\.|\\.\\d{0,2})?$"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->strReg:Ljava/lang/String;

    .line 37
    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$MyInputFilter;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$MyInputFilter;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mMyFilter:[Landroid/text/InputFilter;

    .line 70
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mcontext:Landroid/content/Context;

    .line 71
    const v0, 0x7f07050e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->setTitle(I)V

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030186

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mContentView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mContentView:Landroid/view/View;

    const v1, 0x7f0d046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMax:Landroid/widget/EditText;

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mContentView:Landroid/view/View;

    const v1, 0x7f0d046f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMin:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMax:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$1;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMax:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mMyFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMin:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mMyFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMin:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    const v0, 0x7f0704e1

    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f0704e2

    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$4;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$4;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->btnSure:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->btnSure:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->strReg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMax:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->minValue:D

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMin:Z

    return-void
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMax:Z

    return v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bCanDismiss:Z

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->maxValue:D

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMax:Z

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMin:Z

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)D
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->maxValue:D

    return-wide v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)D
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->minValue:D

    return-wide v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mfromFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->btnSure:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public createContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bCanDismiss:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->dismiss()V

    .line 200
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bCanDismiss:Z

    .line 205
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setMaxValue(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 184
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->maxValue:D

    .line 185
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMax:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public setMinValue(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 189
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->minValue:D

    .line 190
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMin:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method public setSettingMaxValue(F)V
    .locals 3
    .parameter "f"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMax:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, strHint:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMax:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public setSettingMinValue(F)V
    .locals 3
    .parameter "f"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, strHint:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMin:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setfromFragment(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mfromFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

    .line 194
    return-void
.end method
