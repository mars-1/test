.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;
.super Ljava/lang/Object;
.source "CodespaceRange.java"


# instance fields
.field private end:[B

.field private start:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public getEnd()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;->end:[B

    return-object v0
.end method

.method public getStart()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;->start:[B

    return-object v0
.end method

.method public setEnd([B)V
    .locals 0
    .parameter "endBytes"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;->end:[B

    .line 69
    return-void
.end method

.method public setStart([B)V
    .locals 0
    .parameter "startBytes"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;->start:[B

    .line 87
    return-void
.end method
