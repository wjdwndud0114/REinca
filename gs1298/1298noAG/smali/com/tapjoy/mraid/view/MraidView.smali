.class public Lcom/tapjoy/mraid/view/MraidView;
.super Lcom/tapjoy/mraid/view/BasicWebView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/view/MraidView$a;,
        Lcom/tapjoy/mraid/view/MraidView$c;,
        Lcom/tapjoy/mraid/view/MraidView$b;,
        Lcom/tapjoy/mraid/view/MraidView$Action;,
        Lcom/tapjoy/mraid/view/MraidView$customCloseState;,
        Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;,
        Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field public static final MRAID_ID:I = 0x66

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static c:[I

.field private static final d:[Ljava/lang/String;

.field private static s:Lcom/tapjoy/mraid/util/MraidPlayer;


# instance fields
.field private A:Landroid/widget/VideoView;

.field private B:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private C:Landroid/widget/ProgressBar;

.field private D:Landroid/os/Handler;

.field private E:Z

.field a:Landroid/webkit/WebViewClient;

.field b:Landroid/webkit/WebChromeClient;

.field private e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

.field private f:Z

.field private g:Z

.field private h:Lcom/tapjoy/mraid/controller/Utility;

.field private i:F

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

.field private q:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field private r:Lcom/tapjoy/mraid/listener/MraidViewListener;

.field private t:I

.field private u:I

.field private v:Ljava/lang/Thread;

.field private w:Z

.field private x:I

.field private y:Landroid/content/Context;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 106
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->c:[I

    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const-string v1, ".mpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->d:[Ljava/lang/String;

    return-void

    .line 106
    :array_0
    .array-data 4
        0x101011f
        0x1010120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;-><init>(Landroid/content/Context;)V

    .line 140
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 141
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    .line 159
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 166
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->t:I

    .line 167
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->u:I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    .line 170
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->w:Z

    .line 547
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    .line 659
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$3;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->a:Landroid/webkit/WebViewClient;

    .line 796
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->b:Landroid/webkit/WebChromeClient;

    .line 222
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Landroid/content/Context;

    .line 223
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/view/BasicWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 141
    iput-boolean v2, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    .line 159
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 166
    iput v2, p0, Lcom/tapjoy/mraid/view/MraidView;->t:I

    .line 167
    iput v2, p0, Lcom/tapjoy/mraid/view/MraidView;->u:I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    .line 170
    iput-boolean v2, p0, Lcom/tapjoy/mraid/view/MraidView;->w:Z

    .line 547
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    .line 659
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$3;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->a:Landroid/webkit/WebViewClient;

    .line 796
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->b:Landroid/webkit/WebChromeClient;

    .line 489
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 490
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView;->c:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 491
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 492
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 493
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 494
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v3, v1, v2}, Lcom/tapjoy/mraid/controller/Utility;->setMaxSize(II)V

    .line 495
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 496
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/mraid/listener/MraidViewListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/tapjoy/mraid/listener/MraidViewListener;

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;-><init>(Landroid/content/Context;)V

    .line 140
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 141
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    .line 159
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 166
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->t:I

    .line 167
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->u:I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    .line 170
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->w:Z

    .line 547
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    .line 659
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$3;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->a:Landroid/webkit/WebViewClient;

    .line 796
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->b:Landroid/webkit/WebChromeClient;

    .line 192
    invoke-virtual {p0, p2}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    .line 193
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Landroid/content/Context;

    .line 194
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 195
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;)F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    return v0
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;I)I
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->l:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyCachedAssetData;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/tapjoy/mraid/view/MraidView;->b(Lcom/tapjoy/TapjoyCachedAssetData;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->z:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/tapjoy/mraid/view/BasicWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1282
    sget-object v2, Lcom/tapjoy/mraid/view/MraidView;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1283
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 1285
    :cond_0
    return v0

    .line 1282
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/mraid/view/MraidView;I)I
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->m:I

    return p1
.end method

.method private static b(Lcom/tapjoy/TapjoyCachedAssetData;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 781
    if-nez p0, :cond_0

    .line 790
    :goto_0
    return-object v0

    .line 786
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 787
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCachedAssetData;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 790
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->p:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    .line 3506
    if-eqz p1, :cond_1

    .line 3508
    const/4 v0, 0x0

    .line 3509
    const-string v1, "top-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3510
    const-string v0, "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36"

    .line 3537
    :cond_0
    :goto_0
    if-eqz v0, :cond_8

    .line 3538
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    .line 3513
    :cond_2
    const-string v1, "top-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3514
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18"

    goto :goto_0

    .line 3517
    :cond_3
    const-string v1, "top-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3518
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = 1"

    goto :goto_0

    .line 3521
    :cond_4
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3522
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18"

    goto :goto_0

    .line 3525
    :cond_5
    const-string v1, "bottom-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3526
    const-string v0, "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36"

    goto :goto_0

    .line 3528
    :cond_6
    const-string v1, "bottom-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3529
    const-string v0, "document.getElementById(\"closeButton\").style.left = 1;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;"

    goto :goto_0

    .line 3532
    :cond_7
    const-string v1, "bottom-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3533
    const-string v0, "document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 -18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;"

    goto :goto_0

    .line 3540
    :cond_8
    const-string v0, "MRAIDView"

    const-string v1, "Reposition of close button failed."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/listener/MraidViewListener;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method static synthetic f(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 1

    .prologue
    .line 80
    .line 3647
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v0, :cond_0

    .line 3648
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onClose()Z

    .line 3651
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 3652
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3653
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/controller/Utility;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    return-object v0
.end method

.method private getContentViewHeight()I
    .locals 2

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1137
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic h(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic j(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic l(Lcom/tapjoy/mraid/view/MraidView;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->w:Z

    return v0
.end method

.method static synthetic m(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 4

    .prologue
    .line 80
    .line 4100
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4101
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 4102
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 4107
    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->t:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->u:I

    if-eq v0, v2, :cond_1

    .line 4116
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v2, v3, :cond_1

    .line 4118
    const-string v2, "top-right"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/tapjoy/mraid/view/MraidView;->resizeOrientation(IILjava/lang/String;Z)V

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1124
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->reset()V

    .line 466
    invoke-super {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->clearView()V

    .line 467
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1191
    return-void
.end method

.method public createCloseImageButton()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "window.mraidview.createCss();"

    .line 251
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 252
    const-string v0, "MRAIDView"

    const-string v1, "Creating close button."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public getCloseButtonState()Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->p:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    return-object v0
.end method

.method getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;
    .locals 2

    .prologue
    .line 1622
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/util/MraidPlayer;

    if-eqz v0, :cond_0

    .line 1623
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->releasePlayer()V

    .line 1624
    :cond_0
    new-instance v0, Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/mraid/util/MraidPlayer;-><init>(Landroid/content/Context;)V

    .line 1625
    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/util/MraidPlayer;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1541
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewState()Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method public hasMraidTag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v0, "<\\s*script[^>]+mraid\\.js"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 970
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V

    .line 971
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 972
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 975
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 976
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->g:Z

    .line 980
    new-instance v0, Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/mraid/controller/Utility;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    .line 982
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    const-string v1, "MRAIDUtilityControllerBridge"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 985
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 987
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    .line 989
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 993
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 994
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->t:I

    .line 995
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->u:I

    .line 997
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:I

    .line 1000
    :cond_1
    return-void
.end method

.method public injectMraidJavaScript(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 302
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public isMraid()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    return v0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    .line 1506
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->g:Z

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 372
    if-nez p2, :cond_0

    .line 461
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 377
    const-string v0, "<html>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 379
    iput-boolean v3, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    .line 381
    const-string v0, "mraid.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 389
    if-lez v1, :cond_9

    invoke-virtual {p0, p2}, Lcom/tapjoy/mraid/view/MraidView;->hasMraidTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    move v0, v1

    .line 393
    :goto_1
    if-ltz v0, :cond_a

    .line 394
    add-int/lit8 v2, v0, 0x7

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "<script"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    move v2, v3

    .line 399
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 400
    add-int v6, v1, v2

    add-int v7, v1, v2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 402
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    .line 412
    :cond_1
    :goto_4
    if-gez v5, :cond_7

    .line 413
    const-string v2, "MRAIDView"

    const-string v5, "wrapping fragment"

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v2, "<html>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string v2, "<head>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v2, "<meta name=\'viewport\' content=\'user-scalable=no initial-scale=1.0\' />"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v2, "<title>Advertisement</title>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const-string v2, "</head>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const-string v2, "<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    const-string v2, "<div align=\"center\"> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const-string v0, "<script type=text/javascript>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    const-string v0, "mraid.js"

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    if-nez v0, :cond_2

    .line 429
    const-string v0, "js/mraid.js"

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v0, "</script>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_3
    :goto_5
    const-string v0, "MRAIDView"

    const-string v1, "injected js/mraid.js"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/tapjoy/mraid/view/BasicWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 405
    :cond_5
    add-int v6, v1, v2

    add-int v7, v1, v2

    add-int/lit8 v7, v7, 0x9

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "</script>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 407
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x9

    .line 408
    goto/16 :goto_4

    .line 399
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 436
    :cond_7
    const-string v0, "<head>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 437
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 439
    const-string v0, "mraid.js"

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    if-nez v0, :cond_8

    .line 443
    const-string v0, "js/mraid.js"

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_8
    add-int/lit8 v2, v1, 0x6

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    const-string v2, "<script type=\'text/javascript\'>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    const-string v0, "</script>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 456
    :cond_9
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$1;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/mraid/view/MraidView$1;-><init>(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public loadUrlStandard(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;->loadUrl(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1546
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->E:Z

    if-nez v0, :cond_0

    .line 1547
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1548
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->n:I

    .line 1549
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->o:I

    .line 1550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->E:Z

    .line 1553
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->w:Z

    .line 1557
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1559
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$b;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$b;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    .line 1560
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1563
    :cond_2
    invoke-super {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->onAttachedToWindow()V

    .line 1564
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->w:Z

    .line 1601
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->stopAllListeners()V

    .line 1606
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->onDetachedFromWindow()V

    .line 1618
    return-void

    .line 1614
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->k:Z

    .line 1513
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->k:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    if-ltz v1, :cond_0

    .line 1514
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    .line 1515
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1517
    const/4 v0, 0x1

    .line 1518
    const-string v1, "window.mraidview.fireChangeEvent({ keyboardState: true});"

    .line 1519
    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 1521
    :cond_0
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->k:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    if-ltz v1, :cond_1

    .line 1522
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    .line 1523
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1524
    const/4 v0, 0x0

    .line 1525
    const-string v1, "window.mraidview.fireChangeEvent({ keyboardState: false});"

    .line 1526
    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 1528
    :cond_1
    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    if-gez v1, :cond_2

    .line 1529
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    .line 1531
    :cond_2
    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->k:Z

    .line 1532
    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "back"    # Z
    .param p3, "forward"    # Z
    .param p4, "refresh"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1224
    .line 1225
    const/4 v1, 0x0

    .line 1228
    invoke-static {p1}, Lcom/tapjoy/mraid/view/MraidView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move v0, v3

    .line 1252
    :goto_0
    if-eqz v0, :cond_1

    .line 3273
    new-instance v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    invoke-direct {v6}, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;-><init>()V

    .line 3274
    iput v2, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 3275
    iput v2, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 3276
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v0

    iput v0, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 3277
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v0

    iput v0, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 3278
    const-string v7, "fullscreen"

    const-string v8, "exit"

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/tapjoy/mraid/view/MraidView;->playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :goto_1
    return-void

    .line 1235
    :cond_0
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyURLConnection;->getRedirectFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 1237
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "redirect: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1243
    iget-object v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1246
    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    move v0, v3

    goto :goto_0

    .line 1259
    :cond_1
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mraid Browser open:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1261
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    const-string v1, "open_show_back"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1263
    const-string v1, "open_show_forward"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1264
    const-string v1, "open_show_refresh"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1265
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1266
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "POI"    # Ljava/lang/String;
    .param p2, "fullscreen"    # Z

    .prologue
    .line 1307
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening Map Url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1309
    invoke-static {v0}, Lcom/tapjoy/mraid/util/Utils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1310
    if-eqz p2, :cond_0

    .line 1312
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 1313
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1314
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1315
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1318
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "autoPlay"    # Z
    .param p3, "controls"    # Z
    .param p4, "loop"    # Z
    .param p5, "position"    # Z
    .param p6, "startStyle"    # Ljava/lang/String;
    .param p7, "stopStyle"    # Ljava/lang/String;

    .prologue
    .line 1356
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>()V

    .line 1358
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1361
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1363
    const-string v2, "action"

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$Action;->PLAY_AUDIO:Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView$Action;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1367
    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1370
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1371
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :goto_0
    return-void

    .line 1373
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1377
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1378
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 1324
    const-string v0, "player_properties"

    .line 1325
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 1326
    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1327
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v2

    .line 1328
    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    .line 1329
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1331
    invoke-virtual {v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->playAudio()V

    .line 1332
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "audioMuted"    # Z
    .param p3, "autoPlay"    # Z
    .param p4, "controls"    # Z
    .param p5, "loop"    # Z
    .param p6, "d"    # Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    .param p7, "startStyle"    # Ljava/lang/String;
    .param p8, "stopStyle"    # Ljava/lang/String;

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1460
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>()V

    .line 1461
    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1463
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1464
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string v2, "action"

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$Action;->PLAY_VIDEO:Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView$Action;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1469
    if-eqz p6, :cond_0

    .line 1470
    const-string v2, "expand_dimensions"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1472
    :cond_0
    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1474
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1475
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1476
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1477
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :cond_1
    :goto_0
    return-void

    .line 1479
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1481
    :cond_2
    if-eqz p6, :cond_1

    .line 1482
    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1483
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playVideoImpl(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1384
    const-string v0, "player_properties"

    .line 1385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 1386
    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .line 1387
    const-string v2, "expand_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1389
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v3

    .line 1390
    invoke-virtual {v3, v0, v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    .line 1392
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v4, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1394
    iget v2, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1395
    iget v2, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1396
    invoke-virtual {v3, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1400
    const/16 v0, 0x65

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1401
    iget v0, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iget v1, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1403
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1405
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1409
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1410
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1412
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-virtual {v3, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setListener(Lcom/tapjoy/mraid/listener/Player;)V

    .line 1432
    invoke-virtual {v3}, Lcom/tapjoy/mraid/util/MraidPlayer;->playVideo()V

    .line 1433
    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "strMsg"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1591
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1592
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1595
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1596
    return-void
.end method

.method public removeCloseImageButton()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "document.getElementById(\"closeButton\").style.visibility=\"hidden\";"

    .line 257
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 258
    const-string v0, "MRAIDView"

    const-string v1, "Removing close button."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->HIDDEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 260
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/listener/MraidViewListener;

    .line 212
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->invalidate()V

    .line 474
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->deleteOldAds()V

    .line 475
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->stopAllListeners()V

    .line 2491
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2492
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->E:Z

    if-eqz v1, :cond_0

    .line 2493
    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2494
    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2496
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 2497
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    .line 477
    return-void
.end method

.method public resizeOrientation(IILjava/lang/String;Z)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "customClosePosition"    # Ljava/lang/String;
    .param p4, "allowOffScreen"    # Z

    .prologue
    .line 1171
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->t:I

    .line 1172
    iput p2, p0, Lcom/tapjoy/mraid/view/MraidView;->u:I

    .line 1174
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resizeOrientation to dimensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1178
    const-string v2, "resize_width"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1179
    const-string v2, "resize_height"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1180
    const-string v2, "resize_allowOffScreen"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1181
    const-string v2, "resize_customClosePostition"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1183
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1184
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1584
    invoke-super {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1570
    invoke-super {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1688
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Landroid/content/Context;

    .line 1689
    return-void
.end method

.method public setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tapjoy/mraid/listener/MraidViewListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/listener/MraidViewListener;

    .line 205
    return-void
.end method

.method public setMaxSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Utility;->setMaxSize(II)V

    .line 290
    return-void
.end method

.method public setOrientationProperties(ZLjava/lang/String;)V
    .locals 2
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrientation"    # Ljava/lang/String;

    .prologue
    .line 1289
    const/4 v0, -0x1

    .line 1291
    if-nez p1, :cond_1

    .line 1292
    const-string v0, "landscape"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 1294
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1295
    return-void

    .line 1292
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V
    .locals 2
    .param p1, "type"    # Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    .prologue
    .line 227
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    .line 228
    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->p:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    .line 235
    :goto_0
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$b;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$b;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    .line 240
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    :cond_2
    return-void

    .line 231
    :cond_3
    const-string v0, "MRAIDView"

    const-string v1, "Incorrect placement type."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1198
    return-void
.end method

.method public showCloseImageButton()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "document.getElementById(\"closeButton\").style.visibility=\"visible\";"

    .line 264
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 265
    const-string v0, "MRAIDView"

    const-string v1, "Showing close button."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 267
    return-void
.end method

.method public videoPlaying()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoViewCleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 933
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 935
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->z:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 936
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->z:Landroid/widget/RelativeLayout;

    .line 941
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/widget/VideoView;

    .line 951
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 954
    if-eqz p0, :cond_3

    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 957
    :cond_3
    const-string v0, "javascript:try{Tapjoy.AdUnit.dispatchEvent(\'videoend\')}catch(e){}"

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 958
    return-void

    .line 947
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
