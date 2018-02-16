.class public final Lextern/okhttp3/MultipartBody$Part;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field private final body:Lextern/okhttp3/RequestBody;

.field private final headers:Lextern/okhttp3/Headers;


# direct methods
.method private constructor <init>(Lextern/okhttp3/Headers;Lextern/okhttp3/RequestBody;)V
    .locals 0
    .param p1, "headers"    # Lextern/okhttp3/Headers;
    .param p2, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lextern/okhttp3/MultipartBody$Part;->headers:Lextern/okhttp3/Headers;

    .line 266
    iput-object p2, p0, Lextern/okhttp3/MultipartBody$Part;->body:Lextern/okhttp3/RequestBody;

    .line 267
    return-void
.end method

.method static synthetic access$000(Lextern/okhttp3/MultipartBody$Part;)Lextern/okhttp3/Headers;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/MultipartBody$Part;

    .prologue
    .line 224
    iget-object v0, p0, Lextern/okhttp3/MultipartBody$Part;->headers:Lextern/okhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$100(Lextern/okhttp3/MultipartBody$Part;)Lextern/okhttp3/RequestBody;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/MultipartBody$Part;

    .prologue
    .line 224
    iget-object v0, p0, Lextern/okhttp3/MultipartBody$Part;->body:Lextern/okhttp3/RequestBody;

    return-object v0
.end method

.method public static create(Lextern/okhttp3/Headers;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/MultipartBody$Part;
    .locals 2
    .param p0, "headers"    # Lextern/okhttp3/Headers;
    .param p1, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    new-instance v0, Lextern/okhttp3/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Lextern/okhttp3/MultipartBody$Part;-><init>(Lextern/okhttp3/Headers;Lextern/okhttp3/RequestBody;)V

    return-object v0
.end method

.method public static create(Lextern/okhttp3/RequestBody;)Lextern/okhttp3/MultipartBody$Part;
    .locals 1
    .param p0, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lextern/okhttp3/MultipartBody$Part;->create(Lextern/okhttp3/Headers;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/MultipartBody$Part;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-static {v1, p1}, Lextern/okhttp3/RequestBody;->create(Lextern/okhttp3/MediaType;Ljava/lang/String;)Lextern/okhttp3/RequestBody;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lextern/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/MultipartBody$Part;

    move-result-object v0

    return-object v0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/MultipartBody$Part;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "body"    # Lextern/okhttp3/RequestBody;

    .prologue
    .line 247
    if-nez p0, :cond_0

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "disposition":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lextern/okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    if-eqz p1, :cond_1

    .line 254
    const-string v1, "; filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {v0, p1}, Lextern/okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Content-Disposition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lextern/okhttp3/Headers;->of([Ljava/lang/String;)Lextern/okhttp3/Headers;

    move-result-object v1

    invoke-static {v1, p2}, Lextern/okhttp3/MultipartBody$Part;->create(Lextern/okhttp3/Headers;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/MultipartBody$Part;

    move-result-object v1

    return-object v1
.end method
