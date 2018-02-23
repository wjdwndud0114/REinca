.class public final Lcom/google/android/gms/internal/zzrj;
.super Lcom/google/android/gms/analytics/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzrj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzLQ:I

.field public zzLR:I

.field private zzabW:Ljava/lang/String;

.field public zzabX:I

.field public zzabY:I

.field public zzabZ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabW:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrj;->zzabW:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrj;->zzabW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzrj;->zzabX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzrj;->zzLQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzrj;->zzLR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzrj;->zzabY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzrj;->zzabZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrj;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrj;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabX:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabX:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrj;->zzay(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzLQ:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzLQ:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrj;->zzaz(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzLR:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzLR:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrj;->zzaA(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabY:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabY:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrj;->zzaB(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabZ:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabZ:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrj;->zzaC(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrj;->setLanguage(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public zzaA(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrj;->zzLR:I

    return-void
.end method

.method public zzaB(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrj;->zzabY:I

    return-void
.end method

.method public zzaC(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrj;->zzabZ:I

    return-void
.end method

.method public zzay(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrj;->zzabX:I

    return-void
.end method

.method public zzaz(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrj;->zzLQ:I

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzf;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzrj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrj;->zza(Lcom/google/android/gms/internal/zzrj;)V

    return-void
.end method

.method public zzmJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabX:I

    return v0
.end method

.method public zzmK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzLQ:I

    return v0
.end method

.method public zzmL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzLR:I

    return v0
.end method

.method public zzmM()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabY:I

    return v0
.end method

.method public zzmN()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrj;->zzabZ:I

    return v0
.end method
