.class final Lcom/paypal/android/MEP/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/MEP/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/paypal/android/MEP/b/a;


# direct methods
.method constructor <init>(Lcom/paypal/android/MEP/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const/high16 v4, 0x7f00

    const/4 v5, 0x2

    const/high16 v3, 0x7e00

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    iget-object v1, v1, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    if-nez v1, :cond_0

    and-int v1, v0, v3

    if-eq v1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    and-int v1, v0, v4

    if-ne v1, v4, :cond_4

    sub-int v1, v0, v4

    iget-object v0, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-ne v0, v5, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :goto_1
    const-string/jumbo v3, "FundingPlanId"

    iget-object v4, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    invoke-static {v4}, Lcom/paypal/android/MEP/b/a;->a(Lcom/paypal/android/MEP/b/a;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/paypal/android/MEP/b/a;->e:Z

    iget-object v0, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    invoke-virtual {v0, v2}, Lcom/paypal/android/MEP/b/a;->a(I)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/MEP/b/a;->a(ILjava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/paypal/android/MEP/a/d$1;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v0

    goto :goto_1

    :cond_4
    and-int v1, v0, v3

    if-ne v1, v3, :cond_6

    sub-int/2addr v0, v3

    if-nez v0, :cond_5

    const-string/jumbo v0, "ApplyFeeToSender"

    :goto_3
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    const-string/jumbo v3, "FeeBearer"

    invoke-virtual {v1, v3, v0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "ApplyFeeToReceiver"

    goto :goto_3

    :cond_6
    const/high16 v1, 0x7d00

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    invoke-static {v1}, Lcom/paypal/android/MEP/b/a;->b(Lcom/paypal/android/MEP/b/a;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    if-ne v1, v5, :cond_7

    sget-object v1, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :goto_4
    const-string/jumbo v3, "ShippingAddressId"

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-eq v0, v5, :cond_9

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->k()I

    move-result v0

    :goto_5
    if-nez v0, :cond_8

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/paypal/android/MEP/b/d;->a:Lcom/paypal/android/MEP/b/a;

    invoke-static {v0}, Lcom/paypal/android/MEP/b/a;->c(Lcom/paypal/android/MEP/b/a;)Lcom/paypal/android/MEP/a/a;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/a/a$a;->d:Lcom/paypal/android/MEP/a/a$a;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/a;->a(Lcom/paypal/android/MEP/a/a$a;)V

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto :goto_5
.end method
