.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileSettingsColumns"
.end annotation


# static fields
.field public static final zzbaA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "profile_visible"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "profile_visibility_explicitly_set"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gamer_tag"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gamer_tag_explicitly_set"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gamer_tag_is_default"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "stock_avatar_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "stock_avatar_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "profile_discoverable"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "auto_sign_in"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "player_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;->zzbaA:[Ljava/lang/String;

    return-void
.end method
