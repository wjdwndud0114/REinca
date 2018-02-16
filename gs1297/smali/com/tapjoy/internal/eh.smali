.class public final Lcom/tapjoy/internal/eh;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/eh$b;,
        Lcom/tapjoy/internal/eh$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/dn;

.field public static final d:Ljava/lang/Long;

.field public static final e:Ljava/lang/Long;


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    new-instance v0, Lcom/tapjoy/internal/eh$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/eh$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/dn;

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eh;->d:Ljava/lang/Long;

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eh;->e:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sget-object v1, Lcom/tapjoy/internal/hu;->b:Lcom/tapjoy/internal/hu;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tapjoy/internal/eh;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/hu;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/hu;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/dn;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/dl;-><init>(Lcom/tapjoy/internal/dn;Lcom/tapjoy/internal/hu;)V

    .line 57
    iput-object p1, p0, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/tapjoy/internal/eh;->g:Ljava/lang/Long;

    .line 59
    iput-object p3, p0, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    .line 60
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/eh$a;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/tapjoy/internal/eh$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/eh$a;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/internal/eh$a;->c:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/tapjoy/internal/eh;->g:Ljava/lang/Long;

    iput-object v1, v0, Lcom/tapjoy/internal/eh$a;->d:Ljava/lang/Long;

    .line 67
    iget-object v1, p0, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    iput-object v1, v0, Lcom/tapjoy/internal/eh$a;->e:Ljava/lang/Long;

    .line 68
    invoke-virtual {p0}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/hu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eh$a;->a(Lcom/tapjoy/internal/hu;)Lcom/tapjoy/internal/dl$a;

    .line 69
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p1, p0, :cond_1

    .line 80
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 75
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/tapjoy/internal/eh;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 76
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/eh;

    .line 77
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/hu;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/hu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/hu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eh;->g:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/eh;->g:Ljava/lang/Long;

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    .line 80
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 86
    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/tapjoy/internal/eh;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hu;->hashCode()I

    move-result v0

    .line 88
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/eh;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 93
    :cond_0
    return v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eh;->g:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, ", clicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Push{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
