.class final Lextern/okhttp3/internal/http2/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private final children:[Lextern/okhttp3/internal/http2/Huffman$Node;

.field private final symbol:I

.field private final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/16 v0, 0x100

    new-array v0, v0, [Lextern/okhttp3/internal/http2/Huffman$Node;

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->children:[Lextern/okhttp3/internal/http2/Huffman$Node;

    .line 210
    iput v1, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 211
    iput v1, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->terminalBits:I

    .line 212
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "bits"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->children:[Lextern/okhttp3/internal/http2/Huffman$Node;

    .line 222
    iput p1, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 223
    and-int/lit8 v0, p2, 0x7

    .line 224
    .local v0, "b":I
    if-nez v0, :cond_0

    const/16 v0, 0x8

    .end local v0    # "b":I
    :cond_0
    iput v0, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->terminalBits:I

    .line 225
    return-void
.end method

.method static synthetic access$000(Lextern/okhttp3/internal/http2/Huffman$Node;)[Lextern/okhttp3/internal/http2/Huffman$Node;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Huffman$Node;

    .prologue
    .line 196
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->children:[Lextern/okhttp3/internal/http2/Huffman$Node;

    return-object v0
.end method

.method static synthetic access$100(Lextern/okhttp3/internal/http2/Huffman$Node;)I
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Huffman$Node;

    .prologue
    .line 196
    iget v0, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->symbol:I

    return v0
.end method

.method static synthetic access$200(Lextern/okhttp3/internal/http2/Huffman$Node;)I
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/internal/http2/Huffman$Node;

    .prologue
    .line 196
    iget v0, p0, Lextern/okhttp3/internal/http2/Huffman$Node;->terminalBits:I

    return v0
.end method
