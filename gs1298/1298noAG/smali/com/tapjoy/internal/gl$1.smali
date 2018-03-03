.class final Lcom/tapjoy/internal/gl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gl;-><init>(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gl;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gl;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tapjoy/internal/gl$1;->a:Lcom/tapjoy/internal/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 31
    check-cast p2, Lcom/tapjoy/internal/dy;

    .line 2034
    sget-object v0, Lcom/tapjoy/internal/dy;->c:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/dn;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    .line 1039
    sget-object v0, Lcom/tapjoy/internal/dy;->c:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dy;

    .line 31
    return-object v0
.end method
