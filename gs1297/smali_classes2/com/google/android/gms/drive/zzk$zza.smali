.class public Lcom/google/android/gms/drive/zzk$zza;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzk$zza;->zzzL()Lcom/google/android/gms/drive/zzk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzk$zza;->zzdZ(I)Lcom/google/android/gms/drive/zzk$zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzk$zza;->zzat(Z)Lcom/google/android/gms/drive/zzk$zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzk$zza;->zzdJ(Ljava/lang/String;)Lcom/google/android/gms/drive/zzk$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzat(Z)Lcom/google/android/gms/drive/zzk$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzdJ(Ljava/lang/String;)Lcom/google/android/gms/drive/zzk$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzdZ(I)Lcom/google/android/gms/drive/zzk$zza;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzzL()Lcom/google/android/gms/drive/zzk;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzk$zza;->zzzI()V

    new-instance v0, Lcom/google/android/gms/drive/zzk;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzk$zza;->zzaJF:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzk$zza;->zzaJG:Z

    iget v5, p0, Lcom/google/android/gms/drive/zzk$zza;->zzaJH:I

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/zzk;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzk$1;)V

    return-object v0
.end method
