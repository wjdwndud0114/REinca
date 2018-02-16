.class public abstract Lcom/tapjoy/internal/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/di;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lcom/tapjoy/internal/di;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/tapjoy/internal/dd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/dd;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/tapjoy/internal/dd$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/dd$1;-><init>(Lcom/tapjoy/internal/dd;)V

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/di;

    return-void
.end method

.method static synthetic g()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tapjoy/internal/dd;->a:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final e()Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/di;

    invoke-interface {v0}, Lcom/tapjoy/internal/di;->e()Lcom/tapjoy/internal/dh;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/tapjoy/internal/di$a;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/di;

    invoke-interface {v0}, Lcom/tapjoy/internal/di;->f()Lcom/tapjoy/internal/di$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/dd;->f()Lcom/tapjoy/internal/di$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
