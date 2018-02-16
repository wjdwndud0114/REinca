.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QuestCompletedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/games/quest/QuestUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaZa:Lcom/google/android/gms/games/quest/Quest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/quest/Quest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;->zzaZa:Lcom/google/android/gms/games/quest/Quest;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;->zzaZa:Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/quest/QuestUpdateListener;->onQuestCompleted(Lcom/google/android/gms/games/quest/Quest;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/quest/QuestUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;->zza(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
