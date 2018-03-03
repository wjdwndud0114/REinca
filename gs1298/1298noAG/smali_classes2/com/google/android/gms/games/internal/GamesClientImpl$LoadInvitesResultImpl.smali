.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitesResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/social/Social$LoadInvitesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadInvitesResultImpl"
.end annotation


# instance fields
.field private final zzaZD:Lcom/google/android/gms/games/social/SocialInviteBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitesResultImpl;->zzaZD:Lcom/google/android/gms/games/social/SocialInviteBuffer;

    return-void
.end method
