.class public final Lcom/tapjoy/internal/fi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/fi;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:D

.field public e:J

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 8
    new-instance v1, Lcom/tapjoy/internal/fi;

    const-wide/16 v8, 0x0

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v9}, Lcom/tapjoy/internal/fi;-><init>(JJJD)V

    sput-object v1, Lcom/tapjoy/internal/fi;->a:Lcom/tapjoy/internal/fi;

    return-void
.end method

.method public constructor <init>(JJJD)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/tapjoy/internal/fi;->f:J

    .line 34
    iput-wide p3, p0, Lcom/tapjoy/internal/fi;->b:J

    .line 35
    iput-wide p5, p0, Lcom/tapjoy/internal/fi;->c:J

    .line 36
    iput-wide p7, p0, Lcom/tapjoy/internal/fi;->d:D

    .line 38
    iput-wide p1, p0, Lcom/tapjoy/internal/fi;->e:J

    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 50
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 46
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 47
    goto :goto_0

    .line 49
    :cond_3
    check-cast p1, Lcom/tapjoy/internal/fi;

    .line 50
    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/tapjoy/internal/fi;->f:J

    iget-wide v4, p1, Lcom/tapjoy/internal/fi;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/tapjoy/internal/fi;->b:J

    iget-wide v4, p1, Lcom/tapjoy/internal/fi;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/tapjoy/internal/fi;->c:J

    iget-wide v4, p1, Lcom/tapjoy/internal/fi;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/tapjoy/internal/fi;->d:D

    iget-wide v4, p1, Lcom/tapjoy/internal/fi;->d:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/tapjoy/internal/fi;->e:J

    iget-wide v4, p1, Lcom/tapjoy/internal/fi;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
