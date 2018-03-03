.class public final Lcom/google/android/gms/internal/zzbgg$zza;
.super Lcom/google/android/gms/internal/zzbun;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbun",
        "<",
        "Lcom/google/android/gms/internal/zzbgg$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbLh:J

.field public zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

.field public zzlu:Lcom/google/android/gms/internal/zzai$zzf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbun;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbgg$zza;->zzRT()Lcom/google/android/gms/internal/zzbgg$zza;

    return-void
.end method

.method public static zzP([B)Lcom/google/android/gms/internal/zzbgg$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbus;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbgg$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgg$zza;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbut;->zza(Lcom/google/android/gms/internal/zzbut;[B)Lcom/google/android/gms/internal/zzbut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbgg$zza;

    return-object v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbgg$zza;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbgg$zza;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzai$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzai$zzj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbup;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai$zzf;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai$zzj;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbup;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public zzRT()Lcom/google/android/gms/internal/zzbgg$zza;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzcsg:I

    return-object p0
.end method

.method public zzW(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzbgg$zza;
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->zzacx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzai$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzai$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbul;->zza(Lcom/google/android/gms/internal/zzbut;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzai$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzai$zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbul;->zza(Lcom/google/android/gms/internal/zzbut;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzbum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbum;->zzb(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbum;->zza(ILcom/google/android/gms/internal/zzbut;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbum;->zza(ILcom/google/android/gms/internal/zzbut;)V

    :cond_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbgg$zza;->zzW(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzbgg$zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzv()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbun;->zzv()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLh:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbum;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbum;->zzc(ILcom/google/android/gms/internal/zzbut;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbgg$zza;->zzbLi:Lcom/google/android/gms/internal/zzai$zzj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbum;->zzc(ILcom/google/android/gms/internal/zzbut;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
