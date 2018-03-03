.class public final Lcom/tapjoy/internal/ea;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ea$b;,
        Lcom/tapjoy/internal/ea$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/dn;

.field public static final d:Lcom/tapjoy/internal/eb;


# instance fields
.field public final e:Lcom/tapjoy/internal/eb;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/tapjoy/internal/ea$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ea$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ea;->c:Lcom/tapjoy/internal/dn;

    .line 24
    sget-object v0, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    sput-object v0, Lcom/tapjoy/internal/ea;->d:Lcom/tapjoy/internal/eb;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/eb;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/hu;)V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/tapjoy/internal/ea;->c:Lcom/tapjoy/internal/dn;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/dl;-><init>(Lcom/tapjoy/internal/dn;Lcom/tapjoy/internal/hu;)V

    .line 56
    iput-object p1, p0, Lcom/tapjoy/internal/ea;->e:Lcom/tapjoy/internal/eb;

    .line 57
    iput-object p2, p0, Lcom/tapjoy/internal/ea;->f:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 79
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 74
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/tapjoy/internal/ea;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 75
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/ea;

    .line 76
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/ea;->a()Lcom/tapjoy/internal/hu;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tapjoy/internal/ea;->a()Lcom/tapjoy/internal/hu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/hu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ea;->e:Lcom/tapjoy/internal/eb;

    iget-object v3, p1, Lcom/tapjoy/internal/ea;->e:Lcom/tapjoy/internal/eb;

    .line 77
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/eb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ea;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ea;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    .line 79
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
    .line 84
    iget v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 85
    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/tapjoy/internal/ea;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hu;->hashCode()I

    move-result v0

    .line 87
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ea;->e:Lcom/tapjoy/internal/eb;

    invoke-virtual {v1}, Lcom/tapjoy/internal/eb;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ea;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 90
    iput v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 92
    :cond_0
    return v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ea;->e:Lcom/tapjoy/internal/eb;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ea;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "EventGroup{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
