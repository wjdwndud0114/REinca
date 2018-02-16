.class public final Lcom/google/android/gms/internal/zzai$zzj;
.super Lcom/google/android/gms/internal/zzbun;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbun",
        "<",
        "Lcom/google/android/gms/internal/zzai$zzj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

.field public zzlu:Lcom/google/android/gms/internal/zzai$zzf;

.field public zzlv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbun;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzai$zzj;->zzN()Lcom/google/android/gms/internal/zzai$zzj;

    return-void
.end method

.method public static zzg([B)Lcom/google/android/gms/internal/zzai$zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbus;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzai$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzai$zzj;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbut;->zza(Lcom/google/android/gms/internal/zzbut;[B)Lcom/google/android/gms/internal/zzbut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzai$zzj;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzai$zzj;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzai$zzj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbur;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzai$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbup;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbur;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai$zzf;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbup;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public zzN()Lcom/google/android/gms/internal/zzai$zzj;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzai$zzi;->zzL()[Lcom/google/android/gms/internal/zzai$zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzcsg:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbum;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbum;->zza(ILcom/google/android/gms/internal/zzbut;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbum;->zza(ILcom/google/android/gms/internal/zzbut;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbum;->zzq(ILjava/lang/String;)V

    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzai$zzj;->zzw(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzai$zzj;

    move-result-object v0

    return-object v0
.end method

.method protected zzv()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbun;->zzv()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbum;->zzc(ILcom/google/android/gms/internal/zzbut;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbum;->zzc(ILcom/google/android/gms/internal/zzbut;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbum;->zzr(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public zzw(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzai$zzj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbuw;->zzc(Lcom/google/android/gms/internal/zzbul;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzai$zzi;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzai$zzi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzai$zzi;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbul;->zza(Lcom/google/android/gms/internal/zzbut;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->zzacu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzai$zzi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzai$zzi;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbul;->zza(Lcom/google/android/gms/internal/zzbut;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlt:[Lcom/google/android/gms/internal/zzai$zzi;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzai$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzai$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlu:Lcom/google/android/gms/internal/zzai$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbul;->zza(Lcom/google/android/gms/internal/zzbut;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzai$zzj;->zzlv:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method
