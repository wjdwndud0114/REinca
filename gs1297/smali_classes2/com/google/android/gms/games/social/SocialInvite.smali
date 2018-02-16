.class public interface abstract Lcom/google/android/gms/games/social/SocialInvite;
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
        "Lcom/google/android/gms/games/social/SocialInvite;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDirection()I
.end method

.method public abstract getLastModifiedTimestamp()J
.end method

.method public abstract getPlayer()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getType()I
.end method

.method public abstract zzFM()Ljava/lang/String;
.end method
