.class public abstract Lcom/tapjoy/internal/bs$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/tapjoy/internal/bs$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/bs$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/tapjoy/internal/bs$a;->a:Lcom/tapjoy/internal/bs$a;

    .line 49
    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/tapjoy/internal/bt;->a:Lcom/tapjoy/internal/bs$a;

    sput-object v0, Lcom/tapjoy/internal/bs$a;->a:Lcom/tapjoy/internal/bs$a;

    .line 52
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bs;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/tapjoy/internal/cp;->c:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bs$a;->a(Ljava/io/Reader;)Lcom/tapjoy/internal/bs;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Lcom/tapjoy/internal/bs;
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Lcom/tapjoy/internal/db;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bs$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bs;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/tapjoy/internal/bs;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/tapjoy/internal/cp;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bs$a;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bs;

    move-result-object v0

    return-object v0
.end method
