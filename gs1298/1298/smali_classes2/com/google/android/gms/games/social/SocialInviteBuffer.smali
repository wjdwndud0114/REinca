.class public Lcom/google/android/gms/games/social/SocialInviteBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/games/social/SocialInvite;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->zzjg(I)Lcom/google/android/gms/games/social/SocialInvite;

    move-result-object v0

    return-object v0
.end method

.method public zzjg(I)Lcom/google/android/gms/games/social/SocialInvite;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteRef;

    iget-object v1, p0, Lcom/google/android/gms/games/social/SocialInviteBuffer;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/social/SocialInviteRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
