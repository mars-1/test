.class public Lcom/itextpdf/text/pdf/XfaForm$Stack2;
.super Ljava/util/ArrayList;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stack2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6768f67767003b6cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 450
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .prologue
    .line 490
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 469
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 471
    .local v0, ret:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->remove(I)Ljava/lang/Object;

    .line 472
    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, this:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->add(Ljava/lang/Object;)Z

    .line 482
    return-object p1
.end method
