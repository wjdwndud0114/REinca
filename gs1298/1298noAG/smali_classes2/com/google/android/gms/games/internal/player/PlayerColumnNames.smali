.class public final Lcom/google/android/gms/games/internal/player/PlayerColumnNames;
.super Ljava/lang/Object;


# instance fields
.field public final name:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final zzbcA:Ljava/lang/String;

.field public final zzbcB:Ljava/lang/String;

.field public final zzbcC:Ljava/lang/String;

.field public final zzbcD:Ljava/lang/String;

.field public final zzbcE:Ljava/lang/String;

.field public final zzbcF:Ljava/lang/String;

.field public final zzbcG:Ljava/lang/String;

.field public final zzbcH:Ljava/lang/String;

.field public final zzbcI:Ljava/lang/String;

.field public final zzbcJ:Ljava/lang/String;

.field public final zzbcK:Ljava/lang/String;

.field public final zzbcL:Ljava/lang/String;

.field public final zzbcf:Ljava/lang/String;

.field public final zzbcg:Ljava/lang/String;

.field public final zzbch:Ljava/lang/String;

.field public final zzbci:Ljava/lang/String;

.field public final zzbcj:Ljava/lang/String;

.field public final zzbck:Ljava/lang/String;

.field public final zzbcl:Ljava/lang/String;

.field public final zzbcm:Ljava/lang/String;

.field public final zzbcn:Ljava/lang/String;

.field public final zzbco:Ljava/lang/String;

.field public final zzbcp:Ljava/lang/String;

.field public final zzbcq:Ljava/lang/String;

.field public final zzbcr:Ljava/lang/String;

.field public final zzbcs:Ljava/lang/String;

.field public final zzbct:Ljava/lang/String;

.field public final zzbcu:Ljava/lang/String;

.field public final zzbcv:Ljava/lang/String;

.field public final zzbcw:Ljava/lang/String;

.field public final zzbcx:Ljava/lang/String;

.field public final zzbcy:Ljava/lang/String;

.field public final zzbcz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_player_id"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcf:Ljava/lang/String;

    const-string v0, "profile_name"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcg:Ljava/lang/String;

    const-string v0, "profile_icon_image_uri"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbch:Ljava/lang/String;

    const-string v0, "profile_icon_image_url"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbci:Ljava/lang/String;

    const-string v0, "profile_hi_res_image_uri"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcj:Ljava/lang/String;

    const-string v0, "profile_hi_res_image_url"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbck:Ljava/lang/String;

    const-string v0, "last_updated"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcl:Ljava/lang/String;

    const-string v0, "is_in_circles"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcm:Ljava/lang/String;

    const-string v0, "played_with_timestamp"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcn:Ljava/lang/String;

    const-string v0, "current_xp_total"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbco:Ljava/lang/String;

    const-string v0, "current_level"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcp:Ljava/lang/String;

    const-string v0, "current_level_min_xp"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcq:Ljava/lang/String;

    const-string v0, "current_level_max_xp"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcr:Ljava/lang/String;

    const-string v0, "next_level"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcs:Ljava/lang/String;

    const-string v0, "next_level_max_xp"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbct:Ljava/lang/String;

    const-string v0, "last_level_up_timestamp"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcu:Ljava/lang/String;

    const-string v0, "player_title"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->title:Ljava/lang/String;

    const-string v0, "has_all_public_acls"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcv:Ljava/lang/String;

    const-string v0, "is_profile_visible"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcw:Ljava/lang/String;

    const-string v0, "most_recent_external_game_id"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcx:Ljava/lang/String;

    const-string v0, "most_recent_game_name"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcy:Ljava/lang/String;

    const-string v0, "most_recent_activity_timestamp"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcz:Ljava/lang/String;

    const-string v0, "most_recent_game_icon_uri"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcA:Ljava/lang/String;

    const-string v0, "most_recent_game_hi_res_uri"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcB:Ljava/lang/String;

    const-string v0, "most_recent_game_featured_uri"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcC:Ljava/lang/String;

    const-string v0, "has_debug_access"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcD:Ljava/lang/String;

    const-string v0, "gamer_tag"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcE:Ljava/lang/String;

    const-string v0, "real_name"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->name:Ljava/lang/String;

    const-string v0, "banner_image_landscape_uri"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcF:Ljava/lang/String;

    const-string v0, "banner_image_landscape_url"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcG:Ljava/lang/String;

    const-string v0, "banner_image_portrait_uri"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcH:Ljava/lang/String;

    const-string v0, "banner_image_portrait_url"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcI:Ljava/lang/String;

    const-string v0, "gamer_friend_status"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcJ:Ljava/lang/String;

    const-string v0, "gamer_friend_update_timestamp"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcK:Ljava/lang/String;

    const-string v0, "is_muted"

    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcL:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "external_player_id"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcf:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "profile_name"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcg:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "profile_icon_image_uri"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbch:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "profile_icon_image_url"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbci:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "profile_hi_res_image_uri"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcj:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "profile_hi_res_image_url"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbck:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "last_updated"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcl:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "is_in_circles"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcm:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "played_with_timestamp"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcn:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "current_xp_total"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbco:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "current_level"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcp:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "current_level_min_xp"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcq:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "current_level_max_xp"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcr:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "next_level"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcs:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "next_level_max_xp"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbct:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "last_level_up_timestamp"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcu:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "player_title"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->title:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "has_all_public_acls"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcv:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "is_profile_visible"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcw:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "most_recent_external_game_id"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcx:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "most_recent_game_name"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcy:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "most_recent_activity_timestamp"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcz:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "most_recent_game_icon_uri"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcA:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "most_recent_game_hi_res_uri"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcB:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "most_recent_game_featured_uri"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcC:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "has_debug_access"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcD:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "gamer_tag"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "real_name"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->name:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "banner_image_landscape_uri"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcF:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "banner_image_landscape_url"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "banner_image_portrait_uri"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcH:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "banner_image_portrait_url"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcI:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "gamer_friend_status"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcJ:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "gamer_friend_update_timestamp"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "is_muted"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    iput-object v0, p0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->zzbcL:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_23
.end method
