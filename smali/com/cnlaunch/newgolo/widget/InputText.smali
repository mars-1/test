.class public Lcom/cnlaunch/newgolo/widget/InputText;
.super Landroid/widget/EditText;
.source "InputText.java"


# instance fields
.field private clip:Landroid/text/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getClipboard()Landroid/text/ClipboardManager;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/InputText;->clip:Landroid/text/ClipboardManager;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/InputText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/InputText;->clip:Landroid/text/ClipboardManager;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/InputText;->clip:Landroid/text/ClipboardManager;

    return-object v0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v2

    :goto_0
    return v2

    .line 40
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/InputText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 42
    .local v0, editable:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/InputText;->getSelectionStart()I

    move-result v1

    .line 44
    .local v1, position:I
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/InputText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/InputText;->getTextSize()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/cnlaunch/newgolo/provider/FaceProvider;->toSpannableString(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/newgolo/widget/InputText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/widget/InputText;->setSelection(I)V

    .line 47
    .end local v1           #position:I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1020022
        :pswitch_0
    .end packed-switch
.end method
