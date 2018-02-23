.class public final Lextern/okio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lextern/okio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lextern/okio/ByteString;


# direct methods
.method private constructor <init>([Lextern/okio/ByteString;)V
    .locals 0
    .param p1, "byteStrings"    # [Lextern/okio/ByteString;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 26
    iput-object p1, p0, Lextern/okio/Options;->byteStrings:[Lextern/okio/ByteString;

    .line 27
    return-void
.end method

.method public static varargs of([Lextern/okio/ByteString;)Lextern/okio/Options;
    .locals 2
    .param p0, "byteStrings"    # [Lextern/okio/ByteString;

    .prologue
    .line 30
    new-instance v1, Lextern/okio/Options;

    invoke-virtual {p0}, [Lextern/okio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lextern/okio/ByteString;

    invoke-direct {v1, v0}, Lextern/okio/Options;-><init>([Lextern/okio/ByteString;)V

    return-object v1
.end method


# virtual methods
.method public get(I)Lextern/okio/ByteString;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lextern/okio/Options;->byteStrings:[Lextern/okio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lextern/okio/Options;->get(I)Lextern/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lextern/okio/Options;->byteStrings:[Lextern/okio/ByteString;

    array-length v0, v0

    return v0
.end method
