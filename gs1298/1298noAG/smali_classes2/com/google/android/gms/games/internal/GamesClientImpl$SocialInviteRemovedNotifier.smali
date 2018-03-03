.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialInviteRemovedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbaq:Lcom/google/android/gms/games/social/SocialInvite;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/social/SocialInvite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;->zzbaq:Lcom/google/android/gms/games/social/SocialInvite;

    return-void
.end method


# virtual methods
.method public bridge synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
