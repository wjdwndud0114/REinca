.class public final Lcom/google/android/gms/internal/zzai$zze;
.super Lcom/google/android/gms/internal/zzbun;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbun",
        "<",
        "Lcom/google/android/gms/internal/zzai$zze;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzkF:[Lcom/google/android/gms/internal/zzai$zze;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbun;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzai$zze;->zzG()Lcom/google/android/gms/internal/zzai$zze;

    return-void
.end method

.method public static zzF()[Lcom/google/android/gms/internal/zzai$zze;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzai$zze;->zzkF:[Lcom/google/android/gms/internal/zzai$zze;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzbur;->zzcsf:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzai$zze;->zzkF:[Lcom/google/android/gms/internal/zzai$zze;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzai$zze;

    sput-object v0, Lcom/google/android/gms/internal/zzai$zze;->zzkF:[Lcom/google/android/gms/internal/zzai$zze;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzai$zze;->zzkF:[Lcom/google/android/gms/internal/zzai$zze;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzai$zze;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzai$zze;

    iget v2, p0, Lcom/google/android/gms/internal/zzai$zze;->key:I

    iget v3, p1, Lcom/google/android/gms/internal/zzai$zze;->key:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzai$zze;->value:I

    iget v3, p1, Lcom/google/android/gms/internal/zzai$zze;->value:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbup;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzai$zze;->key:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzai$zze;->value:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbup;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbup;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public zzG()Lcom/google/android/gms/internal/zzai$zze;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzai$zze;->key:I

    iput v0, p0, Lcom/google/android/gms/internal/zzai$zze;->value:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzai$zze;->zzcrX:Lcom/google/android/gms/internal/zzbup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzai$zze;->zzcsg:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzai$zze;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbum;->zzF(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzai$zze;->value:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbum;->zzF(II)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzai$zze;->zzr(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzai$zze;

    move-result-object v0

    return-object v0
.end method

.method public zzr(Lcom/google/android/gms/internal/zzbul;)Lcom/google/android/gms/internal/zzai$zze;
    .locals 1
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->zzacy()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzai$zze;->key:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbul;->zzacy()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzai$zze;->value:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method protected zzv()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbun;->zzv()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzai$zze;->key:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbum;->zzH(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzai$zze;->value:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbum;->zzH(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
