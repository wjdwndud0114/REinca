.class public abstract Lcom/google/android/gms/internal/zzabe;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaBG:Lcom/google/android/gms/internal/zzaaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaz",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public zzwp()Lcom/google/android/gms/internal/zzaaz$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzaaz$zzb",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabe;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaz;->zzwp()Lcom/google/android/gms/internal/zzaaz$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzwq()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabe;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaz;->clear()V

    return-void
.end method
