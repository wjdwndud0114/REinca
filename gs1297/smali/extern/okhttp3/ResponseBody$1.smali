.class final Lextern/okhttp3/ResponseBody$1;
.super Lextern/okhttp3/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okhttp3/ResponseBody;->create(Lextern/okhttp3/MediaType;JLextern/okio/BufferedSource;)Lextern/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lextern/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lextern/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lextern/okhttp3/MediaType;JLextern/okio/BufferedSource;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lextern/okhttp3/ResponseBody$1;->val$contentType:Lextern/okhttp3/MediaType;

    iput-wide p2, p0, Lextern/okhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lextern/okhttp3/ResponseBody$1;->val$content:Lextern/okio/BufferedSource;

    invoke-direct {p0}, Lextern/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lextern/okhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lextern/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lextern/okhttp3/ResponseBody$1;->val$contentType:Lextern/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lextern/okio/BufferedSource;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lextern/okhttp3/ResponseBody$1;->val$content:Lextern/okio/BufferedSource;

    return-object v0
.end method
