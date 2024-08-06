.class public Landroid/support/v4/d/c$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/d/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private b:Landroid/text/TextDirectionHeuristic;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/d/c$a$a;->a:Landroid/text/TextPaint;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iput v2, p0, Landroid/support/v4/d/c$a$a;->c:I

    iput v2, p0, Landroid/support/v4/d/c$a$a;->d:I

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/support/v4/d/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/d/c$a$a;->d:I

    iput v0, p0, Landroid/support/v4/d/c$a$a;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/d/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    goto :goto_1
.end method


# virtual methods
.method public a(I)Landroid/support/v4/d/c$a$a;
    .locals 0

    iput p1, p0, Landroid/support/v4/d/c$a$a;->c:I

    return-object p0
.end method

.method public a(Landroid/text/TextDirectionHeuristic;)Landroid/support/v4/d/c$a$a;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/d/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public a()Landroid/support/v4/d/c$a;
    .locals 5

    new-instance v0, Landroid/support/v4/d/c$a;

    iget-object v1, p0, Landroid/support/v4/d/c$a$a;->a:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/v4/d/c$a$a;->b:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Landroid/support/v4/d/c$a$a;->c:I

    iget v4, p0, Landroid/support/v4/d/c$a$a;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/d/c$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method

.method public b(I)Landroid/support/v4/d/c$a$a;
    .locals 0

    iput p1, p0, Landroid/support/v4/d/c$a$a;->d:I

    return-object p0
.end method
