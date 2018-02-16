.class public Lcom/google/android/gms/drive/metadata/internal/zzj;
.super Ljava/lang/Object;


# instance fields
.field private zzaNx:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzaNx:Ljava/lang/String;

    return-void
.end method

.method public static zzdO(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzj;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    if-nez p0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/metadata/internal/zzj;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/metadata/internal/zzj;

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzaNx:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzaNx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzaNx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFolder()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzaNx:Ljava/lang/String;

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzaNx:Ljava/lang/String;

    return-object v0
.end method

.method public zzAL()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzAM()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/zzj;->isFolder()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzAM()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzj;->zzaNx:Ljava/lang/String;

    const-string v1, "application/vnd.google-apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
