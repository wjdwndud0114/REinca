.class public Lextern/okhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lextern/okhttp3/ResponseBody;

.field private cacheResponse:Lextern/okhttp3/Response;

.field private code:I

.field private handshake:Lextern/okhttp3/Handshake;

.field private headers:Lextern/okhttp3/Headers$Builder;

.field private message:Ljava/lang/String;

.field private networkResponse:Lextern/okhttp3/Response;

.field private priorResponse:Lextern/okhttp3/Response;

.field private protocol:Lextern/okhttp3/Protocol;

.field private receivedResponseAtMillis:J

.field private request:Lextern/okhttp3/Request;

.field private sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lextern/okhttp3/Response$Builder;->code:I

    .line 299
    new-instance v0, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lextern/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    .line 300
    return-void
.end method

.method private constructor <init>(Lextern/okhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lextern/okhttp3/Response$Builder;->code:I

    .line 303
    # getter for: Lextern/okhttp3/Response;->request:Lextern/okhttp3/Request;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$1300(Lextern/okhttp3/Response;)Lextern/okhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->request:Lextern/okhttp3/Request;

    .line 304
    # getter for: Lextern/okhttp3/Response;->protocol:Lextern/okhttp3/Protocol;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$1400(Lextern/okhttp3/Response;)Lextern/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->protocol:Lextern/okhttp3/Protocol;

    .line 305
    # getter for: Lextern/okhttp3/Response;->code:I
    invoke-static {p1}, Lextern/okhttp3/Response;->access$1500(Lextern/okhttp3/Response;)I

    move-result v0

    iput v0, p0, Lextern/okhttp3/Response$Builder;->code:I

    .line 306
    # getter for: Lextern/okhttp3/Response;->message:Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$1600(Lextern/okhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 307
    # getter for: Lextern/okhttp3/Response;->handshake:Lextern/okhttp3/Handshake;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$1700(Lextern/okhttp3/Response;)Lextern/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->handshake:Lextern/okhttp3/Handshake;

    .line 308
    # getter for: Lextern/okhttp3/Response;->headers:Lextern/okhttp3/Headers;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$1800(Lextern/okhttp3/Response;)Lextern/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Headers;->newBuilder()Lextern/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    .line 309
    # getter for: Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$1900(Lextern/okhttp3/Response;)Lextern/okhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->body:Lextern/okhttp3/ResponseBody;

    .line 310
    # getter for: Lextern/okhttp3/Response;->networkResponse:Lextern/okhttp3/Response;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$2000(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->networkResponse:Lextern/okhttp3/Response;

    .line 311
    # getter for: Lextern/okhttp3/Response;->cacheResponse:Lextern/okhttp3/Response;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$2100(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->cacheResponse:Lextern/okhttp3/Response;

    .line 312
    # getter for: Lextern/okhttp3/Response;->priorResponse:Lextern/okhttp3/Response;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$2200(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->priorResponse:Lextern/okhttp3/Response;

    .line 313
    # getter for: Lextern/okhttp3/Response;->sentRequestAtMillis:J
    invoke-static {p1}, Lextern/okhttp3/Response;->access$2300(Lextern/okhttp3/Response;)J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 314
    # getter for: Lextern/okhttp3/Response;->receivedResponseAtMillis:J
    invoke-static {p1}, Lextern/okhttp3/Response;->access$2400(Lextern/okhttp3/Response;)J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/Response;Lextern/okhttp3/Response$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/Response;
    .param p2, "x1"    # Lextern/okhttp3/Response$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lextern/okhttp3/Response$Builder;-><init>(Lextern/okhttp3/Response;)V

    return-void
.end method

.method static synthetic access$000(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Request;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->request:Lextern/okhttp3/Request;

    return-object v0
.end method

.method static synthetic access$100(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Protocol;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->protocol:Lextern/okhttp3/Protocol;

    return-object v0
.end method

.method static synthetic access$1000(Lextern/okhttp3/Response$Builder;)J
    .locals 2
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-wide v0, p0, Lextern/okhttp3/Response$Builder;->sentRequestAtMillis:J

    return-wide v0
.end method

.method static synthetic access$1100(Lextern/okhttp3/Response$Builder;)J
    .locals 2
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-wide v0, p0, Lextern/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lextern/okhttp3/Response$Builder;)I
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget v0, p0, Lextern/okhttp3/Response$Builder;->code:I

    return v0
.end method

.method static synthetic access$300(Lextern/okhttp3/Response$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Handshake;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->handshake:Lextern/okhttp3/Handshake;

    return-object v0
.end method

.method static synthetic access$500(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Headers$Builder;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$600(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->body:Lextern/okhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic access$700(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->networkResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method static synthetic access$800(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->cacheResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method static synthetic access$900(Lextern/okhttp3/Response$Builder;)Lextern/okhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/Response$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->priorResponse:Lextern/okhttp3/Response;

    return-object v0
.end method

.method private checkPriorResponse(Lextern/okhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 407
    # getter for: Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;
    invoke-static {p1}, Lextern/okhttp3/Response;->access$1900(Lextern/okhttp3/Response;)Lextern/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lextern/okhttp3/Response;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 389
    # getter for: Lextern/okhttp3/Response;->body:Lextern/okhttp3/ResponseBody;
    invoke-static {p2}, Lextern/okhttp3/Response;->access$1900(Lextern/okhttp3/Response;)Lextern/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    # getter for: Lextern/okhttp3/Response;->networkResponse:Lextern/okhttp3/Response;
    invoke-static {p2}, Lextern/okhttp3/Response;->access$2000(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    # getter for: Lextern/okhttp3/Response;->cacheResponse:Lextern/okhttp3/Response;
    invoke-static {p2}, Lextern/okhttp3/Response;->access$2100(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_2
    # getter for: Lextern/okhttp3/Response;->priorResponse:Lextern/okhttp3/Response;
    invoke-static {p2}, Lextern/okhttp3/Response;->access$2200(Lextern/okhttp3/Response;)Lextern/okhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lextern/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 357
    return-object p0
.end method

.method public body(Lextern/okhttp3/ResponseBody;)Lextern/okhttp3/Response$Builder;
    .locals 0
    .param p1, "body"    # Lextern/okhttp3/ResponseBody;

    .prologue
    .line 372
    iput-object p1, p0, Lextern/okhttp3/Response$Builder;->body:Lextern/okhttp3/ResponseBody;

    .line 373
    return-object p0
.end method

.method public build()Lextern/okhttp3/Response;
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->request:Lextern/okhttp3/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->protocol:Lextern/okhttp3/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    iget v0, p0, Lextern/okhttp3/Response$Builder;->code:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_2
    new-instance v0, Lextern/okhttp3/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/Response;-><init>(Lextern/okhttp3/Response$Builder;Lextern/okhttp3/Response$1;)V

    return-object v0
.end method

.method public cacheResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;
    .locals 1
    .param p1, "cacheResponse"    # Lextern/okhttp3/Response;

    .prologue
    .line 383
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lextern/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lextern/okhttp3/Response;)V

    .line 384
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/Response$Builder;->cacheResponse:Lextern/okhttp3/Response;

    .line 385
    return-object p0
.end method

.method public code(I)Lextern/okhttp3/Response$Builder;
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 328
    iput p1, p0, Lextern/okhttp3/Response$Builder;->code:I

    .line 329
    return-object p0
.end method

.method public handshake(Lextern/okhttp3/Handshake;)Lextern/okhttp3/Response$Builder;
    .locals 0
    .param p1, "handshake"    # Lextern/okhttp3/Handshake;

    .prologue
    .line 338
    iput-object p1, p0, Lextern/okhttp3/Response$Builder;->handshake:Lextern/okhttp3/Handshake;

    .line 339
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lextern/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 348
    return-object p0
.end method

.method public headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Response$Builder;
    .locals 1
    .param p1, "headers"    # Lextern/okhttp3/Headers;

    .prologue
    .line 367
    invoke-virtual {p1}, Lextern/okhttp3/Headers;->newBuilder()Lextern/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Response$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    .line 368
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lextern/okhttp3/Response$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lextern/okhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public networkResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;
    .locals 1
    .param p1, "networkResponse"    # Lextern/okhttp3/Response;

    .prologue
    .line 377
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lextern/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lextern/okhttp3/Response;)V

    .line 378
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/Response$Builder;->networkResponse:Lextern/okhttp3/Response;

    .line 379
    return-object p0
.end method

.method public priorResponse(Lextern/okhttp3/Response;)Lextern/okhttp3/Response$Builder;
    .locals 0
    .param p1, "priorResponse"    # Lextern/okhttp3/Response;

    .prologue
    .line 401
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lextern/okhttp3/Response$Builder;->checkPriorResponse(Lextern/okhttp3/Response;)V

    .line 402
    :cond_0
    iput-object p1, p0, Lextern/okhttp3/Response$Builder;->priorResponse:Lextern/okhttp3/Response;

    .line 403
    return-object p0
.end method

.method public protocol(Lextern/okhttp3/Protocol;)Lextern/okhttp3/Response$Builder;
    .locals 0
    .param p1, "protocol"    # Lextern/okhttp3/Protocol;

    .prologue
    .line 323
    iput-object p1, p0, Lextern/okhttp3/Response$Builder;->protocol:Lextern/okhttp3/Protocol;

    .line 324
    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lextern/okhttp3/Response$Builder;
    .locals 1
    .param p1, "receivedResponseAtMillis"    # J

    .prologue
    .line 418
    iput-wide p1, p0, Lextern/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 419
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lextern/okhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lextern/okhttp3/Response$Builder;->headers:Lextern/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lextern/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 362
    return-object p0
.end method

.method public request(Lextern/okhttp3/Request;)Lextern/okhttp3/Response$Builder;
    .locals 0
    .param p1, "request"    # Lextern/okhttp3/Request;

    .prologue
    .line 318
    iput-object p1, p0, Lextern/okhttp3/Response$Builder;->request:Lextern/okhttp3/Request;

    .line 319
    return-object p0
.end method

.method public sentRequestAtMillis(J)Lextern/okhttp3/Response$Builder;
    .locals 1
    .param p1, "sentRequestAtMillis"    # J

    .prologue
    .line 413
    iput-wide p1, p0, Lextern/okhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 414
    return-object p0
.end method
