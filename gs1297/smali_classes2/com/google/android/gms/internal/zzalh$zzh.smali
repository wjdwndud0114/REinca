.class public Lcom/google/android/gms/internal/zzalh$zzh;
.super Lcom/google/android/gms/drive/metadata/internal/zzb;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableMetadataField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzalh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzb;",
        "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/zzb;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzalh$zzh;->zze(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected zze(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalh$zzh;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzc(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
