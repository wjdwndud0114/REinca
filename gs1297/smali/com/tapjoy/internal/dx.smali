.class public final Lcom/tapjoy/internal/dx;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dx$b;,
        Lcom/tapjoy/internal/dx$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/dn;

.field public static final d:Ljava/lang/Integer;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/tapjoy/internal/dx$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/dx$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dx;->c:Lcom/tapjoy/internal/dn;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/dx;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/hu;)V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/tapjoy/internal/dx;->c:Lcom/tapjoy/internal/dn;

    invoke-direct {p0, v0, p6}, Lcom/tapjoy/internal/dl;-><init>(Lcom/tapjoy/internal/dn;Lcom/tapjoy/internal/hu;)V

    .line 71
    iput-object p1, p0, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    .line 73
    iput-object p3, p0, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 100
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 93
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/tapjoy/internal/dx;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 94
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/dx;

    .line 95
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/dx;->a()Lcom/tapjoy/internal/hu;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tapjoy/internal/dx;->a()Lcom/tapjoy/internal/hu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/hu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    .line 96
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    .line 97
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    .line 98
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    .line 99
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    .line 100
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 105
    iget v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 106
    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/tapjoy/internal/dx;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hu;->hashCode()I

    move-result v0

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 115
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 108
    goto :goto_0

    :cond_3
    move v0, v1

    .line 109
    goto :goto_1

    :cond_4
    move v0, v1

    .line 110
    goto :goto_2

    :cond_5
    move v0, v1

    .line 111
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", pkgVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, ", pkgRev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", dataVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", installer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "App{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
