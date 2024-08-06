.class public Lcom/a/a/b/m;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/a/a/b/m;


# instance fields
.field public final b:Lcom/a/a/b/o;

.field public c:Ljava/lang/ClassLoader;

.field public d:Lcom/a/a/g;

.field private final e:Lcom/a/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b",
            "<",
            "Lcom/a/a/b/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/b/m;

    invoke-direct {v0}, Lcom/a/a/b/m;-><init>()V

    sput-object v0, Lcom/a/a/b/m;->a:Lcom/a/a/b/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/d/b;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/a/a/d/b;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    new-instance v0, Lcom/a/a/b/o;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/a/a/b/o;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/b/m;->b:Lcom/a/a/b/o;

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/a/a/c/h;->a:Lcom/a/a/c/h;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/a/a/c/h;->a:Lcom/a/a/c/h;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/a/a/b/k;->a:Lcom/a/a/b/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/a/a/b/k;->a:Lcom/a/a/b/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/a/a/b/k;->a:Lcom/a/a/b/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/a/a/b/k;->a:Lcom/a/a/b/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/a/a/b/k;->a:Lcom/a/a/b/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/a/a/b/k;->a:Lcom/a/a/b/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/a/a/c/g;->a:Lcom/a/a/c/g;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/a/a/c/g;->a:Lcom/a/a/c/g;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/a/a/c/g;->a:Lcom/a/a/c/g;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/a/a/b/i;->a:Lcom/a/a/b/i;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/a/a/c/ab;->a:Lcom/a/a/c/ab;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/a/a/c/k;->a:Lcom/a/a/c/k;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/a/a/c/e;->a:Lcom/a/a/c/e;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/a/a/c/e;->a:Lcom/a/a/c/e;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/f;->a:Lcom/a/a/c/f;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/a/a/c/f;->a:Lcom/a/a/c/f;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, [C

    sget-object v2, Lcom/a/a/c/b;->a:Lcom/a/a/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, [Ljava/lang/Object;

    sget-object v2, Lcom/a/a/c/b;->a:Lcom/a/a/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/a/a/c/s;->a:Lcom/a/a/c/s;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/a/a/c/q;->a:Lcom/a/a/c/q;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lcom/a/a/b/i;->a:Lcom/a/a/b/i;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lcom/a/a/b/i;->a:Lcom/a/a/b/i;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lcom/a/a/b/i;->a:Lcom/a/a/b/i;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lcom/a/a/b/i;->a:Lcom/a/a/b/i;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Time;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Timestamp;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/b/m;Ljava/lang/Class;Lcom/a/a/d/a;)Lcom/a/a/b/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/m;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/a;",
            ")",
            "Lcom/a/a/b/a/d;"
        }
    .end annotation

    iget-object v0, p3, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/a/a/b/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/a/a/b/j;-><init>(Lcom/a/a/b/m;Ljava/lang/Class;Lcom/a/a/d/a;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/a/a/b/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/a/a/b/a;-><init>(Lcom/a/a/b/m;Ljava/lang/Class;Lcom/a/a/d/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/a/a/b/a/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    invoke-virtual {v0, p2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/f;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    invoke-virtual {v0, p2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/f;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/a/a/b/m;->a(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Lcom/a/a/a/c;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/c;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/a/a/a/c;->e()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v1, v1}, Lcom/a/a/b/m;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_4

    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_4

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/f;

    :cond_5
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    invoke-virtual {v0, p2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/f;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/a/a/b/c;

    invoke-direct {v0, p1}, Lcom/a/a/b/c;-><init>(Ljava/lang/Class;)V

    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;Lcom/a/a/b/a/f;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/a/a/c/b;->a:Lcom/a/a/c/b;

    goto :goto_1

    :cond_7
    const-class v0, Ljava/util/Set;

    if-eq p1, v0, :cond_8

    const-class v0, Ljava/util/HashSet;

    if-eq p1, v0, :cond_8

    const-class v0, Ljava/util/Collection;

    if-eq p1, v0, :cond_8

    const-class v0, Ljava/util/List;

    if-eq p1, v0, :cond_8

    const-class v0, Ljava/util/ArrayList;

    if-ne p1, v0, :cond_9

    :cond_8
    sget-object v0, Lcom/a/a/c/g;->a:Lcom/a/a/c/g;

    goto :goto_1

    :cond_9
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/a/a/c/g;->a:Lcom/a/a/c/g;

    goto :goto_1

    :cond_a
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/a/a/b/k;->a:Lcom/a/a/b/k;

    goto :goto_1

    :cond_b
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/a/a/b/p;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/p;-><init>(Lcom/a/a/b/m;Ljava/lang/Class;)V

    goto :goto_1

    :cond_c
    new-instance v0, Lcom/a/a/b/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/b/g;-><init>(Lcom/a/a/b/m;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/f;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/m;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/a/a/b/m;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/a/a/b/m;->a(Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/a/a/b/i;->a:Lcom/a/a/b/i;

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Type;Lcom/a/a/b/a/f;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/m;->e:Lcom/a/a/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/d/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    return-void
.end method
