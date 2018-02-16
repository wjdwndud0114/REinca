.class public interface abstract Lcom/google/android/gms/games/internal/experience/ExperienceEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/internal/experience/ExperienceEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract zzES()Ljava/lang/String;
.end method

.method public abstract zzET()Ljava/lang/String;
.end method

.method public abstract zzEU()Ljava/lang/String;
.end method

.method public abstract zzEV()J
.end method

.method public abstract zzEW()J
.end method

.method public abstract zzEX()J
.end method

.method public abstract zzEY()I
.end method
