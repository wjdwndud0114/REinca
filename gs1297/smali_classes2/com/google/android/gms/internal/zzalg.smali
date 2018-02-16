.class public final Lcom/google/android/gms/internal/zzalg;
.super Lcom/google/android/gms/internal/zzbun;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbun",
        "<",
        "Lcom/google/android/gms/internal/zzalg;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaNg:J

.field public zzaNj:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbun;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalg;->zzAB()Lcom/google/android/gms/internal/zzalg;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzalg;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzalg;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbup;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbup;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public zzA(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzalg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->zzacu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbun;->zza(Lcom/google/android/gms/internal/zzbul;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->zzacC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->zzacC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public zzAB()Lcom/google/android/gms/internal/zzalg;
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzalg;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzalg;->zzcsg:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbum;->zzd(IJ)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbum;->zzd(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbun;->zza(Lcom/google/android/gms/internal/zzbum;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzbut;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalg;->zzA(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzalg;

    move-result-object v0

    return-object v0
.end method

.method protected zzv()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbun;->zzv()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalg;->zzaNj:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbum;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzalg;->zzaNg:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbum;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
