.class public Lcom/google/android/gms/internal/zzss;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzsh;


# instance fields
.field public zzabK:Ljava/lang/String;

.field public zzabL:Ljava/lang/String;

.field public zzafc:Ljava/lang/String;

.field public zzafd:I

.field public zzafe:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/zzss;->zzafd:I

    iput v0, p0, Lcom/google/android/gms/internal/zzss;->zzafe:I

    return-void
.end method


# virtual methods
.method public zzmx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzss;->zzabK:Ljava/lang/String;

    return-object v0
.end method

.method public zzmy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzss;->zzabL:Ljava/lang/String;

    return-object v0
.end method

.method public zzpg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzss;->zzabK:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzph()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzss;->zzabL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzss;->zzafc:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzss;->zzafc:Ljava/lang/String;

    return-object v0
.end method

.method public zzpk()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzss;->zzafd:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzss;->zzafd:I

    return v0
.end method

.method public zzpm()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzss;->zzafe:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzss;->zzafe:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
