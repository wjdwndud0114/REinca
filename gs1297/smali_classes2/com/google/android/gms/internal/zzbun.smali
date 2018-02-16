.class public abstract Lcom/google/android/gms/internal/zzbun;
.super Lcom/google/android/gms/internal/zzbut;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzbun",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zzbut;"
    }
.end annotation


# instance fields
.field protected zzcrX:Lcom/google/android/gms/internal/zzbup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbut;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbun;->zzacN()Lcom/google/android/gms/internal/zzbun;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbuo;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbuo",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    iget v2, p1, Lcom/google/android/gms/internal/zzbuo;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbuw;->zzqB(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbup;->zzqx(I)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbuq;->zzb(Lcom/google/android/gms/internal/zzbuo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbup;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbup;->zzqy(I)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbuq;->zza(Lcom/google/android/gms/internal/zzbum;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzbul;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbul;->zzqh(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbuw;->zzqB(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbul;->zzE(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzbuv;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/zzbuv;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/zzbup;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbup;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbuq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbuq;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/zzbup;->zza(ILcom/google/android/gms/internal/zzbuq;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbuq;->zza(Lcom/google/android/gms/internal/zzbuv;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbup;->zzqx(I)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    goto :goto_1
.end method

.method public zzacN()Lcom/google/android/gms/internal/zzbun;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbut;->zzacO()Lcom/google/android/gms/internal/zzbut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbun;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbur;->zza(Lcom/google/android/gms/internal/zzbun;Lcom/google/android/gms/internal/zzbun;)V

    return-object v0
.end method

.method public synthetic zzacO()Lcom/google/android/gms/internal/zzbut;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbun;

    return-object v0
.end method

.method protected zzv()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbun;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbup;->zzqy(I)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbuq;->zzv()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method
