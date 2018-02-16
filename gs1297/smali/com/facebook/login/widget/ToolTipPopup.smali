.class public Lcom/facebook/login/widget/ToolTipPopup;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;,
        Lcom/facebook/login/widget/ToolTipPopup$Style;
    }
.end annotation


# static fields
.field public static final DEFAULT_POPUP_DISPLAY_TIME:J = 0x1770L


# instance fields
.field private final mAnchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mNuxDisplayTime:J

.field private mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 70
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    .line 72
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup$1;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/ToolTipPopup$1;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 94
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mText:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/login/widget/ToolTipPopup;)Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/widget/ToolTipPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    return-object v0
.end method

.method private registerObserver()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->unregisterObserver()V

    .line 197
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 200
    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 207
    :cond_0
    return-void
.end method

.method private updateArrows()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showBottomArrow()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showTopArrow()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->unregisterObserver()V

    .line 190
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 193
    :cond_0
    return-void
.end method

.method public setNuxDisplayTime(J)V
    .locals 1
    .param p1, "displayTime"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    .line 173
    return-void
.end method

.method public setStyle(Lcom/facebook/login/widget/ToolTipPopup$Style;)V
    .locals 0
    .param p1, "mStyle"    # Lcom/facebook/login/widget/ToolTipPopup$Style;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 105
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/high16 v7, -0x80000000

    .line 111
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 112
    new-instance v5, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    iget-object v6, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;-><init>(Lcom/facebook/login/widget/ToolTipPopup;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 113
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    sget v6, Lcom/facebook/R$id;->com_facebook_tooltip_bubble_view_text_body:I

    invoke-virtual {v5, v6}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "body":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    sget-object v6, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    if-ne v5, v6, :cond_2

    .line 117
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;
    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$300(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_blue_background:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$400(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_blue_bottomnub:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$500(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_blue_topnub:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$600(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_blue_xout:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_0
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 135
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "decorView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 137
    .local v3, "decorWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 138
    .local v1, "decorHeight":I
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->registerObserver()V

    .line 139
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 140
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 141
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 139
    invoke-virtual {v5, v6, v7}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->measure(II)V

    .line 142
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    iget-object v7, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 144
    invoke-virtual {v7}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 145
    invoke-virtual {v8}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 146
    iget-object v6, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 147
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->updateArrows()V

    .line 148
    iget-wide v6, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 149
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    new-instance v6, Lcom/facebook/login/widget/ToolTipPopup$2;

    invoke-direct {v6, p0}, Lcom/facebook/login/widget/ToolTipPopup$2;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    iget-wide v8, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    invoke-virtual {v5, v6, v8, v9}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    :cond_0
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 157
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    new-instance v6, Lcom/facebook/login/widget/ToolTipPopup$3;

    invoke-direct {v6, p0}, Lcom/facebook/login/widget/ToolTipPopup$3;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    invoke-virtual {v5, v6}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .end local v0    # "body":Landroid/widget/TextView;
    .end local v1    # "decorHeight":I
    .end local v2    # "decorView":Landroid/view/View;
    .end local v3    # "decorWidth":I
    .end local v4    # "window":Landroid/view/Window;
    :cond_1
    return-void

    .line 125
    .restart local v0    # "body":Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;
    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$300(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_black_background:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$400(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_black_bottomnub:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$500(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_black_topnub:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v5, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$600(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/facebook/R$drawable;->com_facebook_tooltip_black_xout:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
