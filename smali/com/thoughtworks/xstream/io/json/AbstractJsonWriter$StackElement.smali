.class Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;
.super Ljava/lang/Object;
.source "AbstractJsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackElement"
.end annotation


# instance fields
.field status:I

.field final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .parameter "type"
    .parameter "status"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    .line 150
    iput p2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    .line 151
    return-void
.end method
