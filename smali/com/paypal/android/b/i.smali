.class public final Lcom/paypal/android/b/i;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/b/i$1;,
        Lcom/paypal/android/b/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/drawable/GradientDrawable;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/paypal/android/b/i$a;)V
    .locals 10

    const/high16 v9, -0x1

    const v8, -0x7e5b3a

    const/4 v7, 0x2

    const/high16 v6, 0x4040

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/paypal/android/b/i;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/i;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/i;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x5

    const/16 v2, 0xa

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v1, Lcom/paypal/android/b/i$1;->a:[I

    invoke-virtual {p2}, Lcom/paypal/android/b/i$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/paypal/android/b/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/i;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/paypal/android/b/i;->addView(Landroid/view/View;)V

    return-void

    :pswitch_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, -0x30f1

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Lcom/paypal/android/b/i;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->a:Landroid/content/Context;

    const-string/jumbo v2, "system-icon-error.png"

    invoke-static {v1, v2}, Lcom/paypal/android/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/b/i;->c:Landroid/widget/ImageView;

    sget-object v1, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-static {v1, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, -0x30f1

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Lcom/paypal/android/b/i;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->a:Landroid/content/Context;

    const-string/jumbo v2, "system-icon-alert.png"

    invoke-static {v1, v2}, Lcom/paypal/android/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/b/i;->c:Landroid/widget/ImageView;

    sget-object v1, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-static {v1, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_2

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Lcom/paypal/android/b/i;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->a:Landroid/content/Context;

    const-string/jumbo v2, "system-icon-confirmation.png"

    invoke-static {v1, v2}, Lcom/paypal/android/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/b/i;->c:Landroid/widget/ImageView;

    sget-object v1, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-static {v1, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    const v2, -0xcc9a00

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Lcom/paypal/android/b/i;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/b/i;->a:Landroid/content/Context;

    const-string/jumbo v2, "system-icon-notification.png"

    invoke-static {v1, v2}, Lcom/paypal/android/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/b/i;->c:Landroid/widget/ImageView;

    sget-object v1, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-static {v1, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    const v2, -0xcc9967

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 0x4
        0x9ct 0xf3t 0xfft 0xfft
        0xcct 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x9ct 0xf3t 0xfft 0xfft
        0xcct 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xedt 0xddt 0xcet 0xfft
        0xfat 0xf1t 0xe8t 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0xedt 0xddt 0xcet 0xfft
        0xfat 0xf1t 0xe8t 0xfft
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/b/i;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
