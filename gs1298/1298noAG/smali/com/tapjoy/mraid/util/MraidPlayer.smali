.class public Lcom/tapjoy/mraid/util/MraidPlayer;
.super Landroid/widget/VideoView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

.field private b:Landroid/media/AudioManager;

.field private c:Lcom/tapjoy/mraid/listener/Player;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ImageButton;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "Loading. Please Wait.."

    sput-object v0, Lcom/tapjoy/mraid/util/MraidPlayer;->h:Ljava/lang/String;

    .line 42
    const-string v0, "MRAID Player"

    sput-object v0, Lcom/tapjoy/mraid/util/MraidPlayer;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->b:Landroid/media/AudioManager;

    .line 52
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 99
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->e:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/mraid/util/Utils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->e:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->b()V

    .line 104
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/Player;->onError()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setVideoURI(Landroid/net/Uri;)V

    .line 109
    const-string v0, "player"

    iget-object v1, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->showControl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 1084
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setMediaController(Landroid/widget/MediaController;)V

    .line 1085
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 1119
    :cond_2
    invoke-virtual {p0, p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1120
    invoke-virtual {p0, p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1121
    invoke-virtual {p0, p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1123
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    iget-boolean v0, v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->inline:Z

    if-nez v0, :cond_3

    .line 1219
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    iget-boolean v0, v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->inline:Z

    if-nez v0, :cond_3

    .line 1222
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->f:Landroid/widget/RelativeLayout;

    .line 1223
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1226
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1227
    sget-object v1, Lcom/tapjoy/mraid/util/MraidPlayer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1230
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1231
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1233
    iget-object v2, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1234
    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1235
    iget-object v1, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1126
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->start()V

    goto/16 :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 194
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 244
    iget-object v1, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method public getCloseImageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->doLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->start()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->exitOnComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    iget-boolean v0, v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->inline:Z

    if-eqz v0, :cond_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->releasePlayer()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 171
    sget-object v0, Lcom/tapjoy/mraid/util/MraidPlayer;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Player error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->c()V

    .line 173
    invoke-direct {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->b()V

    .line 174
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/Player;->onError()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->c()V

    .line 182
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/Player;->onPrepared()V

    .line 184
    :cond_0
    return-void
.end method

.method public playAudio()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->a()V

    .line 71
    return-void
.end method

.method public playVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 137
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->d:I

    .line 139
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->b:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->a()V

    .line 142
    return-void
.end method

.method public releasePlayer()V
    .locals 4

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->j:Z

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->j:Z

    .line 206
    invoke-virtual {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->stopPlayback()V

    .line 207
    invoke-direct {p0}, Lcom/tapjoy/mraid/util/MraidPlayer;->b()V

    .line 208
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2148
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->d:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/Player;->onComplete()V

    goto :goto_0
.end method

.method public setListener(Lcom/tapjoy/mraid/listener/Player;)V
    .locals 0
    .param p1, "listener"    # Lcom/tapjoy/mraid/listener/Player;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->c:Lcom/tapjoy/mraid/listener/Player;

    .line 157
    return-void
.end method

.method public setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V
    .locals 1
    .param p1, "properties"    # Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->j:Z

    .line 61
    iput-object p1, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->a:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 62
    iput-object p2, p0, Lcom/tapjoy/mraid/util/MraidPlayer;->e:Ljava/lang/String;

    .line 63
    return-void
.end method
